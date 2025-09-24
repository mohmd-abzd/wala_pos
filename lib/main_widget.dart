import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/core/route/go_router_provider.dart';

class MainWidget extends ConsumerWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      routerConfig: goRouter,
      supportedLocales: [
        Locale('ar'), // English
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        fontFamily: 'Alexandria',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8080B7), // primary seed
          primary: const Color(0xFF8080B7),
          secondary: const Color(0xFF63CE84),
          tertiary: const Color(0xFF51AF6C),
          surface: Colors.white,
        ),
      ),
    );
  }
}
