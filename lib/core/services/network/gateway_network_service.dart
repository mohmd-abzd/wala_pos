import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/core/features/settings/settings_storage.dart';

/// Reads the saved gateway IP/host from SharedPreferences via SettingsStorage.
/// Expected formats:
/// - "192.168.1.50"
/// - "192.168.1.50:3000"
/// - "http://192.168.1.50:3000"
final gatewayBaseUrlProvider = FutureProvider.autoDispose<String?>((ref) async {
  final storage = ref.watch(settingsStorageProvider);
  final raw = await storage.readSystemIp();
  if (raw == null) return null;
  final v = raw.trim();
  return v.isEmpty ? null : v;
});

/// A dedicated Dio instance for the local Gateway (separate baseUrl from backend).
final gatewayNetworkServiceProvider = Provider.autoDispose<Dio>((ref) {
  final baseUrlAsync = ref.watch(gatewayBaseUrlProvider);

  final raw = baseUrlAsync.maybeWhen(data: (v) => v, orElse: () => null);

  final options = BaseOptions(
    baseUrl: "http://172.20.10.2:3000/",
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 8),
    sendTimeout: const Duration(seconds: 8),
    headers: const {'Content-Type': 'application/json'},
  );

  return Dio(options);
});

/// Call this after you save/clear system_ip so Dio rebuilds with the new baseUrl.
void invalidateGatewayNetwork(WidgetRef ref) {
  ref.invalidate(gatewayBaseUrlProvider);
  ref.invalidate(gatewayNetworkServiceProvider);
}

String _normalizeGatewayBaseUrl(String? raw) {
  // If not configured yet, keep a dummy base URL so the app can still start.
  if (raw == null || raw.isEmpty) return 'http://0.0.0.0';

  var v = raw.trim();

  // If user stores only IP/host (or IP:port), add scheme.
  if (!v.startsWith('http://') && !v.startsWith('https://')) {
    v = 'http://$v';
  }

  final uri = Uri.parse(v);

  // Default port to 3000 if not provided.
  if (!uri.hasPort) {
    return uri.replace(port: 3000).toString();
  }

  return uri.toString();
}
