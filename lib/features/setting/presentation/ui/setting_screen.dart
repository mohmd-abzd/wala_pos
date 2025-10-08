import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '/common/extension/string_hardcoded.dart';
import '/core/route/route_name.dart';
import '/features/setting/presentation/controller/setting_scontroller.dart';

class SettingScreen extends ConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('الإعدادات'.hardcoded)),
      body: ListView(
        children: [
          const SizedBox(height: 8),

          // Account section
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.lock),
                  title: Text('تغيير كلمة المرور'.hardcoded),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => context.pushNamed(changePasswordRoute),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          // Logout section
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: Text(
                'تسجيل الخروج'.hardcoded,
                style: const TextStyle(color: Colors.red),
              ),
              onTap: () {
                ref.read(settingControllerProvider.notifier).logout();
              },
            ),
          ),
        ],
      ),
    );
  }
}
