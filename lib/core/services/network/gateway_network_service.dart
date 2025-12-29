import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/core/features/settings/settings_storage.dart';

/// Reads the saved gateway IP from SharedPreferences.
/// Expected format: "192.168.91.249"
final gatewayIpProvider = FutureProvider.autoDispose<String?>((ref) async {
  final storage = ref.watch(settingsStorageProvider);
  final raw = await storage.readSystemIp();
  if (raw == null) return null;

  final ip = raw.trim();
  return ip.isEmpty ? null : ip;
});

bool _isValidIpv4(String v) {
  final parts = v.split('.');
  if (parts.length != 4) return false;
  for (final p in parts) {
    final n = int.tryParse(p);
    if (n == null) return false;
    if (n < 0 || n > 255) return false;
  }
  return true;
}

/// Builds baseUrl from IP (default port 3000).
String _gatewayBaseUrlFromIp(String ip) {
  final v = ip.trim();
  if (!_isValidIpv4(v)) {
    throw Exception("INVALID_GATEWAY_IP: $ip");
  }
  return 'http://$v:3000/'; // trailing slash matters for URL joining
}

/// ✅ Best: async Dio that waits for SharedPreferences IP to load.
/// Use this provider when building Retrofit clients.
final gatewayDioProvider = FutureProvider.autoDispose<Dio>((ref) async {
  final ip = await ref.watch(gatewayIpProvider.future);

  if (ip == null || ip.trim().isEmpty) {
    throw Exception("GATEWAY_NOT_CONFIGURED");
  }

  final baseUrl = _gatewayBaseUrlFromIp(ip);

  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 8),
      sendTimeout: const Duration(seconds: 8),
      headers: const {'Content-Type': 'application/json'},
    ),
  );

  return dio;
});

/// Optional: synchronous Dio provider.
/// Only use this if you're 100% sure the IP is already loaded.
/// If not loaded yet, it throws (so you don't accidentally call 0.0.0.0).
final gatewayNetworkServiceProvider = Provider.autoDispose<Dio>((ref) {
  final ipAsync = ref.watch(gatewayIpProvider);

  final ip = ipAsync.maybeWhen(data: (v) => v, orElse: () => null);

  if (ip == null || ip.trim().isEmpty) {
    throw Exception("GATEWAY_NOT_CONFIGURED");
  }

  final baseUrl = _gatewayBaseUrlFromIp(ip);

  return Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 8),
      sendTimeout: const Duration(seconds: 8),
      headers: const {'Content-Type': 'application/json'},
    ),
  );
});

/// Call this after save/clear system_ip so Dio rebuilds with the new baseUrl.
void invalidateGatewayNetwork(WidgetRef ref) {
  ref.invalidate(gatewayIpProvider);
  ref.invalidate(gatewayDioProvider);
  ref.invalidate(gatewayNetworkServiceProvider);
}
