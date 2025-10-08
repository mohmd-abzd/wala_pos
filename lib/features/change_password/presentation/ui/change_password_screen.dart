import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:toastification/toastification.dart';

import '/features/change_password/presentation/controller/change_password_controller.dart';
import '/features/setting/presentation/controller/setting_scontroller.dart';

class ChangePasswordScreen extends ConsumerStatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends ConsumerState<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(changePasswordControllerProvider);

    // ✅ Listen for success
    ref.listen<String?>(
      changePasswordControllerProvider.select((s) => s.successMessage),
      (_, msg) {
        if (msg != null) {
          toastification.show(
            context: context,
            title: const Text("نجاح"),
            description: Text(msg),
            autoCloseDuration: const Duration(seconds: 3),
          );

          // 🔑 Logout through settings (consistent with SettingsScreen)
          ref.read(settingControllerProvider.notifier).logout();
        }
      },
    );

    return Scaffold(
      appBar: AppBar(title: const Text('تغيير كلمة المرور')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _oldPasswordController,
                decoration: const InputDecoration(
                  labelText: 'كلمة المرور الحالية',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (v) =>
                    v == null || v.isEmpty ? 'أدخل كلمة المرور الحالية' : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _newPasswordController,
                decoration: const InputDecoration(
                  labelText: 'كلمة المرور الجديدة',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (v) =>
                    v == null || v.isEmpty ? 'أدخل كلمة المرور الجديدة' : null,
              ),
              const SizedBox(height: 24),
              state.isLoading
                  ? const CircularProgressIndicator()
                  : SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () {
                          if (!_formKey.currentState!.validate()) return;
                          ref
                              .read(changePasswordControllerProvider.notifier)
                              .changePassword(
                                oldPassword: _oldPasswordController.text,
                                newPassword: _newPasswordController.text,
                              );
                        },
                        child: const Text('تغيير'),
                      ),
                    ),
              if (state.error != null) ...[
                const SizedBox(height: 12),
                Text(state.error!, style: const TextStyle(color: Colors.red)),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
