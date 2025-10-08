import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:walaa_pos/features/bind_card/presentation/ui/bind_card_screen.dart';
import 'package:walaa_pos/features/change_password/presentation/ui/change_password_screen.dart';
import 'package:walaa_pos/features/customer/presentation/ui/customer_screen.dart';
import 'package:walaa_pos/features/purchase/presentation/ui/purchase_screen.dart';
import 'package:walaa_pos/features/refund/presentation/ui/refund_screen.dart';
import 'package:walaa_pos/features/register_customer/presentation/ui/register_customer_screen.dart';
import 'package:walaa_pos/features/scan/presentation/ui/scan_screen.dart';
import 'package:walaa_pos/features/setting/presentation/ui/setting_screen.dart';
import '/core/provider/auth_state_provider.dart';
import '/core/route/route_name.dart';
import '/features/home/presentation/ui/home_screen.dart';
import '/features/login/presentation/ui/login_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);

  return GoRouter(
    initialLocation: '/login',
    redirect: (context, state) {
      final isGoingToLogin = state.matchedLocation == '/login';

      if (authState) {
        if (isGoingToLogin) {
          return '/home';
        }
      }
      return null;
    },
    routes: [
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
            path: 'setting',
            name: settingRoute,
            builder: (context, state) => const SettingScreen(),
            routes: [
              GoRoute(
                path: 'change-password',
                name: changePasswordRoute,
                builder: (context, state) => const ChangePasswordScreen(),
              ),
            ],
          ),
          GoRoute(
            path: 'register-customer',
            name: registerCustomerRoute,
            builder: (context, state) => const RegisterCustomerScreen(),
          ),
          GoRoute(
            path: 'customer/:vcid',
            name: customerRoute,
            builder: (context, state) =>
                CustomerScreen(vcid: state.pathParameters['vcid']!),
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
                path: 'refund/:customerId',
                name: refundRoute,
                builder: (context, state) => RefundScreen(
                  vcid: state.pathParameters['vcid']!,
                  customerId: int.parse(state.pathParameters['customerId']!),
                ),
              ),
            ],
          ),

          GoRoute(
            path: 'scan',
            name: scanRoute,
            builder: (context, state) => const ScanScreen(),
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
