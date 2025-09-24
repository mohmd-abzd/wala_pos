import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
    return Scaffold(
      appBar: AppBar(title: Text('الرئيسية'.hardcoded)),
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: [
              DrawerHeader(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Walaa POS'.hardcoded,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person_add),
                title: Text('تسجيل زبون جديد'.hardcoded),
                onTap: () => _go(context, '/home/register-customer'),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: Text('الاعدادات'.hardcoded),
                onTap: () => _go(context, '/home/setting'),
              ),
              ListTile(
                leading: const Icon(Icons.qr_code_scanner),
                title: Text('Scan'.hardcoded),
                onTap: () => _go(context, '/home/scan'),
              ),
              ListTile(
                leading: const Icon(Icons.credit_card),
                title: Text('Bind Card'.hardcoded),
                onTap: () => _go(context, '/home/bind-card'),
              ),
            ],
          ),
        ),
      ),
      body: ScanScreen(),
    );
  }
}
