import 'package:flutter/material.dart';
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

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    // Pass the current state of the switch if your save method supports it
    // Or call a specific method for IP
    await ref
        .read(settingsControllerProvider.notifier)
        .save(_controller.text.trim());

    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Settings saved')));
  }

  String? _validateIp(String? value) {
    if (value == null || value.trim().isEmpty) return 'Please enter system IP';
    return null;
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
          : Padding(
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
                    const Text('System IP', style: TextStyle(fontSize: 16)),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'e.g. 192.168.1.100',
                      ),
                      keyboardType: TextInputType.text,
                      validator: _validateIp,
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

                    // ✅ The New Switch for Auto-Accept
                    SwitchListTile(
                      title: const Text('Accept First Invoice Automatically'),
                      subtitle: const Text('Bypasses the confirmation dialog'),
                      value: state
                          .acceptFirstInvoice, // Make sure this exists in SettingsState
                      contentPadding: EdgeInsets.zero,
                      onChanged: (bool value) {
                        // Directly call a method in your notifier to update the bool
                        ref
                            .read(settingsControllerProvider.notifier)
                            .updateAcceptFirstInvoice(value);
                      },
                    ),

                    const SizedBox(height: 24),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: state.loading ? null : _save,
                          child: const Text('حفظ الاعدادات'),
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          onPressed: state.loading
                              ? null
                              : () async {
                                  _controller.clear();
                                  await ref
                                      .read(settingsControllerProvider.notifier)
                                      .clear();
                                  if (!context.mounted) return;
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('System IP cleared'),
                                    ),
                                  );
                                },
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
