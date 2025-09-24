import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/core/startup/start_up_screen.dart';
import 'package:walaa_pos/logger.dart';
import 'package:walaa_pos/main_widget.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [RiverpodLogger()], // <-- only addition

      child: StartUpScreen(builder: (context) => const MainWidget()),
    ),
  );
}
