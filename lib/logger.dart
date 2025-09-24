import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodLogger extends ProviderObserver {
  @override
  void providerDidFail(
    ProviderBase provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    debugPrint('❌ ${provider.name ?? provider.runtimeType}: $error');
    debugPrintStack(stackTrace: stackTrace);
  }
}
