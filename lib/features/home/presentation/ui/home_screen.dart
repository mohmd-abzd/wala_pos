import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:walaa_pos/core/route/route_name.dart';
import 'package:walaa_pos/features/home/presentation/controller/home_controller.dart';
import 'package:walaa_pos/features/scan/presentation/ui/scan_screen.dart';
import '/common/extension/string_hardcoded.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  void _go(BuildContext context, String path) {
    Navigator.of(context).pop(); // close the drawer
    context.push(path); // navigate
  }

  @override
  Widget build(BuildContext context) {
    final profileState = ref.watch(homeControllerProvider);
    final profile = profileState.profile;

    return Scaffold(
      appBar: AppBar(title: Text('الرئيسية'.hardcoded)),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              profileState.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : profileState.profile == null
                  ? const Text('لا توجد بيانات')
                  : Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.grey.shade200,
                            backgroundImage:
                                (profile?.merchantLogo != null &&
                                    profile!.merchantLogo!.isNotEmpty)
                                ? NetworkImage(profile!.merchantLogo!)
                                : null,
                            child:
                                (profile?.merchantLogo == null ||
                                    profile!.merchantLogo!.isEmpty)
                                ? ClipRect(
                                    child: SvgPicture.asset(
                                      'assets/images/wala.svg',
                                      // width: 280,
                                      // height: 280,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : null,
                          ),
                          Text(
                            profileState.profile!.merchantName,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            profileState.profile!.branchName,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Text(
                            profileState.profile!.name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
              Divider(),

              ListTile(
                leading: const Icon(Icons.person_add),
                title: Text('تسجيل زبون جديد'.hardcoded),
                onTap: () => _go(context, '/home/register-customer'),
              ),
              Spacer(),
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
                          onPressed: () => Navigator.of(context).pop(false),
                          child: const Text('إلغاء'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(true),
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
          ),
        ),
      ),
      body: const ScanScreen(),
    );
  }
}
