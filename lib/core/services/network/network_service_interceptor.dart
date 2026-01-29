import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wala_pos/core/data/auth/source/local/iprofile_storage.dart';
import 'package:wala_pos/core/data/auth/source/local/profile_storage.dart';
import 'package:wala_pos/core/provider/auth_state_provider.dart';
import '/common/http_status/status_code.dart';
import 'endpoint.dart';
import '../token/itoken_service.dart';
import '../token/token_service.dart';

final networkServiceInterceptorProvider =
    Provider.family<NetworkServiceInterceptor, Dio>((ref, dio) {
      final tokenService = ref.watch(tokenServiceProvider(dio));
      final auth = ref.read(authStateProvider.notifier);
      final profileStorage = ref.read(profileStorageProvider);
      return NetworkServiceInterceptor(tokenService, profileStorage, dio, auth);
    });

final class NetworkServiceInterceptor extends Interceptor {
  final ITokenService _tokenService;
  final IProfileStorage _profileStorage;
  final Dio _dio;
  final AuthState _auth;

  NetworkServiceInterceptor(
    this._tokenService,
    this._profileStorage,
    this._dio,
    this._auth,
  );

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await _tokenService.getAccessToken();

    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';
    // if the access token is not null, add it to the request headers
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // handle unauthorized error
    if (err.response?.statusCode == unauthorized &&
        err.requestOptions.path != loginEndPoint) {
      final token = await _tokenService.getRefreshToken();
      if (token == null || token.isEmpty) {
        await _tokenService.clearToken();
        await _profileStorage.clearProfile();
        // flip app auth state if you want:
        _auth.setAuthState(false);
        return handler.next(err);
      }

      try {
        // refresh token request - api call
        final result = await _tokenService.refreshToken(token);
        final accesToken = result.data.accessToken;
        final refreshToken = result.data.refreshToken;

        // save new access token and refresh token to secure storage
        await _tokenService.saveToken(accesToken, refreshToken);

        final options = err.requestOptions;
        // update request headers with new access token
        options.headers['Authorization'] = 'Bearer $accesToken';
        // repeat the request with new access token
        return handler.resolve(await _dio.fetch(options));
      } on DioException catch (e) {
        // Backend signals expired refresh token with 498
        if (e.response?.statusCode == refreshTokenExpired ||
            e.response?.statusCode == forbidden) {
          // remove access token and refresh token from secure storage
          await _tokenService.clearToken();
          await _profileStorage.clearProfile();
          _auth.setAuthState(false);
          return handler.next(err);
        }
        // continue with the error
        return handler.next(err);
      }
    }
    // continue with the error
    return handler.next(err);
  }
}
