import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wala_pos/core/boot/onboarding_screen.dart';
import 'package:wala_pos/core/provider/device_config_provider.dart';
import 'package:wala_pos/core/provider/device_type_provider.dart';
import 'package:wala_pos/features/bind_card/presentation/ui/bind_card_screen.dart';
import 'package:wala_pos/features/change_password/presentation/ui/change_password_screen.dart';
import 'package:wala_pos/features/customer/presentation/ui/customer_screen.dart';
import 'package:wala_pos/features/purchase/presentation/ui/purchase_screen.dart';
import 'package:wala_pos/features/purchase_session/presentation/ui/purchase_screen_session.dart';
import 'package:wala_pos/features/settings/presentation/ui/settings_screen.dart';
import 'package:wala_pos/features/transactions/presentation/ui/transactions_screen.dart';
import 'package:wala_pos/features/register_customer/presentation/ui/register_customer_screen.dart';
import 'package:wala_pos/features/scan/presentation/ui/scan_screen.dart';
import '/core/provider/auth_state_provider.dart';
import '/core/route/route_name.dart';
import '/features/home/presentation/ui/home_screen.dart';
import '/features/login/presentation/ui/login_screen.dart';
import 'package:wala_pos/features/kiosk/customer/presentation/ui/customer_screen.dart'
    as kioskcustomer;

import 'package:wala_pos/features/kiosk/scan/presentation/ui/scan_screen.dart'
    as kioskscan;

final goRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);
  final deviceConfigured = ref.watch(deviceConfiguredProvider);

  return GoRouter(
    initialLocation: '/login',
    redirect: (context, state) {
      final isGoingToLogin = state.matchedLocation == '/login';
      final isGoingOnboarding = state.matchedLocation == '/onboarding';

      // 1) Device must be configured first
      if (!deviceConfigured) {
        return isGoingOnboarding ? null : '/onboarding';
      }
      // 2) Then check auth state
      if (authState) {
        if (isGoingToLogin) {
          return '/home';
        }
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/onboarding',
        name: onboardingRoute,
        builder: (context, state) => const OnboardingScreen(),
      ),

      GoRoute(
        path: '/login',
        name: loginRoute,
        builder: (context, state) => const LoginScreen(),
        routes: [],
      ),
      GoRoute(
        path: '/home',
        name: homeRoute,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'change-password',
            name: changePasswordRoute,
            builder: (context, state) => const ChangePasswordScreen(),
          ),
          GoRoute(
            path: 'settings',
            name: settingsRoute,
            builder: (context, state) => const SettingsScreen(),
          ),

          GoRoute(
            path: 'register-customer',
            name: registerCustomerRoute,
            builder: (context, state) => const RegisterCustomerScreen(),
          ),
          GoRoute(
            path: 'customer/:vcid',
            name: customerRoute,
            builder: (context, state) {
              final ref = ProviderScope.containerOf(context).read;
              final currentDeviceType = ref(deviceTypeSyncProvider);

              final isKiosk = currentDeviceType == 'KIOSK';
              final vcid = state.pathParameters['vcid']!;

              return isKiosk
                  ? kioskcustomer.CustomerScreen(vcid: vcid)
                  : CustomerScreen(vcid: vcid);
            },
            routes: [
              GoRoute(
                path: 'purchase/:customerId', // <-- include id
                name: purchaseRoute,
                builder: (context, state) => PurchaseScreen(
                  // <-- new screen
                  vcid: state.pathParameters['vcid']!,
                  customerId: int.parse(state.pathParameters['customerId']!),
                ),
              ),
              GoRoute(
                path: 'purchaseSession/:customerId', // <-- include id
                name: purchaseSessionRoute,
                builder: (context, state) => PurchaseSessionScreen(
                  // <-- new screen
                  vcid: state.pathParameters['vcid']!,
                  customerId: int.parse(state.pathParameters['customerId']!),
                ),
              ),

              GoRoute(
                path: 'refund/:customerId',
                name: transactionsRoute,
                builder: (context, state) => TransactionsScreen(
                  customerId: int.parse(state.pathParameters['customerId']!),
                ),
              ),
            ],
          ),

          GoRoute(
            path: 'scan',
            name: scanRoute,
            builder: (context, state) {
              final ref = ProviderScope.containerOf(context).read;
              final deviceType = ref(deviceTypeSyncProvider);

              final isKiosk = deviceType == 'KIOSK';

              return isKiosk
                  ? const kioskscan.ScanScreen()
                  : const ScanScreen();
            },
          ),
          GoRoute(
            path: 'bind-card',
            name: bindCardRoute,
            builder: (context, state) => const BindCard(),
          ),
        ],
      ),
    ],
  );
});
