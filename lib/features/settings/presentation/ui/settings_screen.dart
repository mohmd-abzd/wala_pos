import 'package:flutter/material.dart';
import 'package:flutter_pos_printer_platform_image_3/flutter_pos_printer_platform_image_3.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/settings_controller.dart';
import '../state/settings_state.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _controller;
  List<UsbPrinterInput> _usbDevices = []; // Removed 'final' to allow updates

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    // Scan for devices as soon as the screen opens
    _scanDevices();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Logic to fill the _usbDevices list
  // Update your scan logic in settings_screen.dart
  Future<void> _scanDevices() async {
    setState(() {
      _usbDevices.clear(); // Clear existing list before scanning
    });

    // This package uses a Stream for discovery
    PrinterManager.instance.discovery(type: PrinterType.usb).listen((device) {
      // Only add if it's not already in the list
      if (!_usbDevices.any(
        (d) => d.vendorId == device.vendorId && d.productId == device.productId,
      )) {
        setState(() {
          // Cast the discovered device to UsbPrinterInput
          _usbDevices.add(
            UsbPrinterInput(
              name: device.name,
              vendorId: device.vendorId,
              productId: device.productId,
            ),
          );
        });
      }
    });
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    await ref
        .read(settingsControllerProvider.notifier)
        .save(_controller.text.trim());
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Settings saved')));
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(settingsControllerProvider);

    ref.listen<SettingsState>(settingsControllerProvider, (previous, next) {
      if (previous?.systemIp != next.systemIp) {
        _controller.text = next.systemIp;
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: state.loading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Network Configuration',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'System IP',
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Divider(),
                    const Text(
                      'Printer Selection',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Pick your printer (Avoid the camera device)',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField<UsbPrinterInput>(
                            isExpanded: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            hint: const Text("Select USB Printer"),
                            value:
                                _usbDevices.any(
                                  (d) => d.vendorId == state.printerVendorId,
                                )
                                ? _usbDevices.firstWhere(
                                    (d) => d.vendorId == state.printerVendorId,
                                  )
                                : null,
                            items: _usbDevices.map((device) {
                              return DropdownMenuItem(
                                value: device,
                                // Provide a fallback name if device.name is null
                                child: Text(
                                  "${device.name ?? 'Unknown USB Device'} (VID: ${device.vendorId})",
                                ),
                              );
                            }).toList(),
                            onChanged: (selected) {
                              if (selected != null) {
                                ref
                                    .read(settingsControllerProvider.notifier)
                                    .updatePrinterSettings(
                                      selected.vendorId!,
                                      selected.productId!,
                                    );
                              }
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: _scanDevices,
                          icon: const Icon(Icons.refresh),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Divider(),
                    const Text(
                      'Automation',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SwitchListTile(
                      title: const Text('Accept First Invoice Automatically'),
                      value: state.acceptFirstInvoice,
                      contentPadding: EdgeInsets.zero,
                      onChanged: (val) => ref
                          .read(settingsControllerProvider.notifier)
                          .updateAcceptFirstInvoice(val),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: _save,
                          child: const Text('حفظ الاعدادات'),
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          onPressed: () => ref
                              .read(settingsControllerProvider.notifier)
                              .clear(),
                          child: const Text('Clear IP'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
