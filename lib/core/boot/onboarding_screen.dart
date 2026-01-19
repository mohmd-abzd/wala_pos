import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:walaa_pos/core/storage/device_info_storage.dart';

import '/core/provider/device_config_provider.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _serialCtrl = TextEditingController();

  bool _confirmMode = false; // when true: show confirm card + buttons
  bool _saving = false;
  String? _errorText;

  @override
  void dispose() {
    _serialCtrl.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // If router passes serial in `extra`, jump straight to confirm mode.
    // Example: context.go('/onboarding', extra: 'WALA-POS-000123');
    final extra = GoRouterState.of(context).extra;
    if (extra is String && extra.trim().isNotEmpty) {
      final serial = extra.trim();
      if (_serialCtrl.text.trim() != serial) {
        _serialCtrl.text = serial;
      }
      _confirmMode = true;
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
    setState(() => _errorText = null);

    final serial = _serialCtrl.text.trim();
    if (serial.isEmpty) {
      setState(() => _errorText = 'Serial number is missing.');
      _toEdit();
      return;
    }

    setState(() => _saving = true);
    try {
      final storage = ref.read(deviceInfoStorageProvider);
      await storage.setSerialNumber(serial);

      // Flip app state so router can stop forcing onboarding
      ref.read(deviceConfiguredProvider.notifier).setConfigured(true);

      if (!mounted) return;
      context.go('/login');
    } catch (e) {
      setState(
        () => _errorText = 'Failed to save device info. (${e.runtimeType})',
      );
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<void> _reset() async {
    setState(() {
      _errorText = null;
      _saving = true;
    });
    try {
      final storage = ref.read(deviceInfoStorageProvider);
      await storage.clearAll();
      _serialCtrl.clear();
      ref.read(deviceConfiguredProvider.notifier).setConfigured(false);
      _confirmMode = false;
    } catch (e) {
      setState(() => _errorText = 'Failed to reset. (${e.runtimeType})');
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
              const SizedBox(height: 10),
              const Icon(Icons.verified_user_outlined, size: 56),
              const SizedBox(height: 12),

              Text(
                'Confirm device serial',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'Please confirm this is the correct serial number for this POS.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),

              if (_errorText != null) ...[
                _ErrorBanner(message: _errorText!),
                const SizedBox(height: 16),
              ],

              if (_confirmMode) ...[
                _ConfirmCard(serial: _serialCtrl.text.trim()),
                const SizedBox(height: 16),

                FilledButton.icon(
                  onPressed: _saving ? null : _confirmAndSave,
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
                  onPressed: _saving ? null : _toEdit,
                  icon: const Icon(Icons.edit_outlined),
                  label: const Text('Edit serial'),
                ),
              ] else ...[
                Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _serialCtrl,
                    autofocus: true,
                    textInputAction: TextInputAction.done,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r'\s')),
                    ],
                    decoration: const InputDecoration(
                      labelText: 'Serial Number',
                      hintText: 'e.g. WALA-POS-000123',
                      border: OutlineInputBorder(),
                    ),
                    validator: (v) {
                      final s = (v ?? '').trim();
                      if (s.isEmpty) return 'Serial number is required';
                      if (s.length < 4) return 'Too short';
                      return null;
                    },
                    onFieldSubmitted: (_) {
                      final ok = _formKey.currentState?.validate() ?? false;
                      if (ok) _toConfirm();
                    },
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
  const _ConfirmCard({required this.serial});

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
          Text('Serial Number', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          SelectableText(
            serial.isEmpty ? '—' : serial,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          Text(
            'If this is correct, confirm to continue.',
            style: Theme.of(context).textTheme.bodyMedium,
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
