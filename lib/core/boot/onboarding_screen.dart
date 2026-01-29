import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:wala_pos/core/storage/device_info_storage.dart';
import '/core/provider/device_config_provider.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _serialCtrl = TextEditingController();

  String? _deviceType;
  bool _confirmMode = false;
  bool _saving = false;
  String? _errorText;

  static const _deviceTypes = ['POS', 'KIOSK', 'DESKTOP', 'WEB'];

  @override
  void dispose() {
    _serialCtrl.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Allow pre-filled serial from router
    final extra = GoRouterState.of(context).extra;
    if (extra is String && extra.trim().isNotEmpty) {
      _serialCtrl.text = extra.trim();
    }
  }

  void _toConfirm() {
    setState(() {
      _errorText = null;
      _confirmMode = true;
    });
  }

  void _toEdit() {
    setState(() {
      _errorText = null;
      _confirmMode = false;
    });
  }

  Future<void> _confirmAndSave() async {
    final serial = _serialCtrl.text.trim();
    final type = _deviceType;

    if (serial.isEmpty || type == null) {
      setState(() {
        _errorText = 'Serial number and device type are required.';
        _confirmMode = false;
      });
      return;
    }

    setState(() => _saving = true);

    try {
      final storage = ref.read(deviceInfoStorageProvider);
      await storage.setSerialNumber(serial);
      await storage.setDeviceType(type);

      // Mark device configured
      ref.read(deviceConfiguredProvider.notifier).setConfigured(true);

      if (!mounted) return;
      context.go('/login');
    } catch (e) {
      setState(() {
        _errorText = 'Failed to save device configuration.';
      });
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<void> _reset() async {
    setState(() {
      _saving = true;
      _errorText = null;
    });

    try {
      final storage = ref.read(deviceInfoStorageProvider);
      await storage.clearAll();

      _serialCtrl.clear();
      _deviceType = null;

      ref.read(deviceConfiguredProvider.notifier).setConfigured(false);
      _confirmMode = false;
    } catch (e) {
      setState(() {
        _errorText = 'Failed to reset device.';
      });
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Setup'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: _saving ? null : _reset,
            child: const Text('Reset'),
          ),
        ],
      ),
      body: SafeArea(
        child: AbsorbPointer(
          absorbing: _saving,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Icon(Icons.devices_outlined, size: 56),
              const SizedBox(height: 16),

              Text(
                'Configure this device',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),

              if (_errorText != null) ...[
                _ErrorBanner(message: _errorText!),
                const SizedBox(height: 16),
              ],

              if (_confirmMode) ...[
                _ConfirmCard(
                  serial: _serialCtrl.text.trim(),
                  deviceType: _deviceType!,
                ),
                const SizedBox(height: 16),

                FilledButton.icon(
                  onPressed: _confirmAndSave,
                  icon: _saving
                      ? const SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.check),
                  label: const Text('Confirm & Continue'),
                ),
                const SizedBox(height: 8),

                OutlinedButton.icon(
                  onPressed: _toEdit,
                  icon: const Icon(Icons.edit),
                  label: const Text('Edit'),
                ),
              ] else ...[
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      DropdownButtonFormField<String>(
                        value: _deviceType,
                        decoration: const InputDecoration(
                          labelText: 'Device Type',
                          border: OutlineInputBorder(),
                        ),
                        items: _deviceTypes
                            .map(
                              (t) => DropdownMenuItem(value: t, child: Text(t)),
                            )
                            .toList(),
                        onChanged: (v) => setState(() => _deviceType = v),
                        validator: (v) =>
                            v == null ? 'Select device type' : null,
                      ),
                      const SizedBox(height: 16),

                      TextFormField(
                        controller: _serialCtrl,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'\s')),
                        ],
                        decoration: const InputDecoration(
                          labelText: 'Serial Number',
                          hintText: 'e.g. WALA-000123',
                          border: OutlineInputBorder(),
                        ),
                        validator: (v) => (v == null || v.trim().isEmpty)
                            ? 'Serial number required'
                            : null,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                FilledButton(
                  onPressed: () {
                    final ok = _formKey.currentState?.validate() ?? false;
                    if (ok) _toConfirm();
                  },
                  child: const Text('Next'),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _ConfirmCard extends StatelessWidget {
  final String serial;
  final String deviceType;

  const _ConfirmCard({required this.serial, required this.deviceType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Device Type', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 4),
          Text(deviceType, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 12),

          Text('Serial Number', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 4),
          SelectableText(
            serial,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

class _ErrorBanner extends StatelessWidget {
  final String message;
  const _ErrorBanner({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(Icons.error_outline, color: Theme.of(context).colorScheme.error),
          const SizedBox(width: 8),
          Expanded(child: Text(message)),
        ],
      ),
    );
  }
}
