// home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'package:wala_pos/core/route/route_name.dart';
import 'package:wala_pos/core/provider/device_type_provider.dart';
import 'package:wala_pos/features/home/presentation/controller/home_controller.dart';
import 'package:wala_pos/features/scan/presentation/ui/scan_screen.dart';
import 'package:wala_pos/features/kiosk/scan/presentation/ui/scan_screen.dart'
    as kioskscan;

import '/common/extension/string_hardcoded.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void _go(BuildContext context, String path) {
    Navigator.of(context).pop();
    context.push(path);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(homeControllerProvider);
    final profile = profileState.profile;
    final deviceTypeAsync = ref.watch(deviceTypeProvider);

    return Scaffold(
      appBar: AppBar(title: Text('الرئيسية'.hardcoded)),
      drawer: Drawer(
        child: SafeArea(
          child: deviceTypeAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (_, __) =>
                const Center(child: Text('خطأ في قراءة نوع الجهاز')),
            data: (deviceType) {
              final isKiosk = deviceType == 'KIOSK';

              return Column(
                children: [
                  // ===== HEADER =====
                  profileState.isLoading
                      ? const CircularProgressIndicator()
                      : profile == null
                      ? const Text('لا توجد بيانات')
                      : Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 8,
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.grey.shade200,
                                backgroundImage:
                                    (profile.merchantLogo?.isNotEmpty ?? false)
                                    ? NetworkImage(profile.merchantLogo!)
                                    : null,
                                child:
                                    (profile.merchantLogo == null ||
                                        profile.merchantLogo!.isEmpty)
                                    ? SvgPicture.asset(
                                        'assets/images/wala.svg',
                                        fit: BoxFit.cover,
                                      )
                                    : null,
                              ),
                              Text(
                                profile.merchantName,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              Text(
                                profile.branchName,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              Text(
                                profile.name,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),

                  const Divider(),

                  // ===== MENU =====
                  if (!isKiosk)
                    ListTile(
                      leading: const Icon(Icons.person_add),
                      title: Text('تسجيل زبون جديد'.hardcoded),
                      onTap: () => _go(context, '/home/register-customer'),
                    ),

                  const Spacer(),

                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: Text('الاعدادات'.hardcoded),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => context.pushNamed(settingsRoute),
                  ),

                  // 🔒 HIDE FOR KIOSK
                  if (!isKiosk)
                    ListTile(
                      leading: const Icon(Icons.lock),
                      title: Text('تغيير كلمة المرور'.hardcoded),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () => context.pushNamed(changePasswordRoute),
                    ),

                  ListTile(
                    leading: const Icon(Icons.logout, color: Colors.red),
                    title: Text(
                      'تسجيل الخروج'.hardcoded,
                      style: const TextStyle(color: Colors.red),
                    ),
                    onTap: () async {
                      final confirm = await showDialog<bool>(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('تأكيد الخروج'),
                          content: const Text(
                            'هل أنت متأكد أنك تريد تسجيل الخروج؟',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context, false),
                              child: const Text('إلغاء'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, true),
                              child: const Text('تأكيد'),
                            ),
                          ],
                        ),
                      );

                      if (confirm == true) {
                        ref.read(homeControllerProvider.notifier).logout();
                      }
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
      body: deviceTypeAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => const Center(child: Text('خطأ في قراءة نوع الجهاز')),
        data: (deviceType) {
          final isKiosk = deviceType == 'KIOSK';

          return isKiosk ? const kioskscan.ScanScreen() : const ScanScreen();
        },
      ),
    );
  }
}
