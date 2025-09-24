import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/features/login/domain/session_token.dart';
import '/common/exception/failure.dart';
import '/common/extension/string_hardcoded.dart';
import '/common/mixin/dio_exception_mapper.dart';
import '/features/login/data/dto/request/login_request.dart';
import '/features/login/data/repository/ilogin_repository.dart';
import '/features/login/data/source/remote/login_api.dart';

final loginRepositoryProvider = Provider.autoDispose<ILoginRepository>((ref) {
  final loginApi = ref.watch(loginApiProvider);

  return LoginRepository(loginApi);
});

final class LoginRepository
    with DioExceptionMapper
    implements ILoginRepository {
  final LoginApi _loginApi;

  LoginRepository(this._loginApi);

  @override
  Future<SessionTokens> login(String username, String password) async {
    try {
      // api call
      final loginRequest = LoginRequest(username: username, password: password);

      final response = await _loginApi.login(loginRequest);
      // get access token and refresh token from response
      // store in secure storage

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
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }
}
