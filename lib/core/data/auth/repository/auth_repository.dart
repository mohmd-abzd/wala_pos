// lib/features/auth/data/repository/auth_repository.dart
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/common/dtos/message_response.dart';
import 'package:walaa_pos/core/data/auth/dto/request/change_password_request.dart';
import 'package:walaa_pos/core/data/auth/dto/request/login_request.dart';
import 'package:walaa_pos/core/data/auth/repository/iauth_repository.dart';
import 'package:walaa_pos/core/data/auth/source/remote/auth_api.dart';
import '/common/exception/failure.dart';
import '/common/extension/string_hardcoded.dart';
import '/common/mixin/dio_exception_mapper.dart';
import '/features/login/domain/session_token.dart';

final authRepositoryProvider = Provider.autoDispose<IAuthRepository>((ref) {
  final api = ref.watch(authApiProvider);
  return AuthRepository(api);
});

final class AuthRepository with DioExceptionMapper implements IAuthRepository {
  final AuthApi _api;
  AuthRepository(this._api);

  @override
  Future<SessionTokens> login(
    String username,
    String password,
    String deviceId,
  ) async {
    try {
      final loginRequest = LoginRequest(
        username: username,
        password: password,
        deviceId: deviceId,
      );
      final response = await _api.login(loginRequest);
      return SessionTokens(
        response.data.accessToken,
        response.data.refreshToken,
      );
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message:
            "An unexpected error occurred. Please try again later".hardcoded,
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: s,
      );
    }
  }

  @override
  Future<MessageResponse> changePassword(
    String oldPassword,
    String newPassword,
  ) async {
    try {
      final body = ChangePasswordRequest(
        oldPassword: oldPassword,
        newPassword: newPassword,
      );
      return await _api.changePassword(body);
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message: "Failed to change password. Please try again later".hardcoded,
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: s,
      );
    }
  }
}
