package com.azsolutions.wala

import android.content.*
import android.os.*
import android.util.Log
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import net.nyx.printerservice.print.IPrinterService
import java.util.concurrent.Executors

class MainActivity : FlutterActivity() {
  // channels
  private val METHOD_CHANNEL = "samples.flutter.dev/printer"
  private val SCAN_EVENT_CHANNEL = "samples.flutter.dev/infrared_scan"

  private val handler = Handler(Looper.getMainLooper())
  private val RC_CAMERA_SCAN = 1001
  private var cameraScanResult: MethodChannel.Result? = null

  private fun startCameraScan(result: MethodChannel.Result) {
  cameraScanResult = result
  val intent = Intent().apply {
    component = ComponentName("net.nyx.scanner", "net.nyx.scanner.ScannerActivity")
    // optionally:
    // putExtra("PLAY_SOUND", true)
    // putExtra("PLAY_VIBRATE", true)
  }
  startActivityForResult(intent, RC_CAMERA_SCAN)
}

override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
  super.onActivityResult(requestCode, resultCode, data)

  if (requestCode == RC_CAMERA_SCAN && resultCode == RESULT_OK && data != null) {
    val result = data.getStringExtra("SCAN_RESULT") ?: ""
    Log.d("CameraScan", "Scanner result: $result")
    cameraScanResult?.success(result)
    cameraScanResult = null
  }
}

  // AIDL service
  private var printerService: IPrinterService? = null
  private val executor = Executors.newSingleThreadExecutor()

  // 1) Service binding (same as before)…
  private val connService = object : ServiceConnection {
    override fun onServiceDisconnected(name: ComponentName?) {
      printerService = null
      handler.postDelayed({ bindPrinterService() }, 5000)
    }
    override fun onServiceConnected(name: ComponentName?, service: IBinder?) {
      printerService = IPrinterService.Stub.asInterface(service)
    }
  }
  private fun bindPrinterService() {
    Intent().apply {
      setPackage("net.nyx.printerservice")
      action = "net.nyx.printerservice.IPrinterService"
    }.also {
      bindService(it, connService, Context.BIND_AUTO_CREATE)
    }
  }
  private fun unbindPrinterService() = unbindService(connService)

  override fun onStart() {
    super.onStart()
    bindPrinterService()
  }
  override fun onStop() {
    super.onStop()
    unbindPrinterService()
  }

  // 2) BroadcastReceiver for scan results
  private var scanSink: EventChannel.EventSink? = null
  private val qscReceiver = object : BroadcastReceiver() {
    override fun onReceive(ctx: Context, intent: Intent) {
      if (intent.action == "com.android.NYX_QSC_DATA") {
        val code = intent.getStringExtra("qsc") ?: ""
        Log.d("InfraredScan", "got: $code")
        scanSink?.success(code)
      }
    }
  }

  // 3) Configure channels in FlutterEngine
  override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
    super.configureFlutterEngine(flutterEngine)


    // MethodChannel: open/close scan
    MethodChannel(flutterEngine.dartExecutor.binaryMessenger, METHOD_CHANNEL)
      .setMethodCallHandler { call, result ->
        when (call.method) {
          "getServiceVersion" -> {
          val version = try {
            printerService?.serviceVersion ?: "Service not available"
          } catch (e: RemoteException) {
            "Remote error"
          }
          result.success(version)
          }
          "openInfraredScan"   -> { triggerScan(0); result.success(null) }
          "closeInfraredScan"  -> { triggerScan(1); result.success(null) }

          "startCameraScan" -> {
            startCameraScan(result)
          }

          else                 -> result.notImplemented()
        }
      }

    // EventChannel: stream scan data
    EventChannel(flutterEngine.dartExecutor.binaryMessenger, SCAN_EVENT_CHANNEL)
      .setStreamHandler(object : EventChannel.StreamHandler {
        override fun onListen(args: Any?, events: EventChannel.EventSink?) {
          scanSink = events
          // register to receive broadcasts
          registerReceiver(qscReceiver, IntentFilter("com.android.NYX_QSC_DATA"))
        }
        override fun onCancel(args: Any?) {
          scanSink = null
          unregisterReceiver(qscReceiver)
        }
      })

  }

  
  // helper to call AIDL triggerQscScan
  private fun triggerScan(cmd: Int) {
    executor.submit {
      try {
        val ret = printerService?.triggerQscScan(cmd) ?: -1
        Log.d("InfraredScan", "triggerQscScan($cmd) -> $ret")
      } catch (e: RemoteException) {
        Log.e("InfraredScan", "error", e)
      }
    }
  }
}
