import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:walaa_pos/common/dtos/message_response.dart';
import 'package:walaa_pos/core/data/auth/dto/request/change_password_request.dart';
import '/core/data/remote/endpoint.dart';
import '/core/data/remote/network_service.dart';
import '../../dto/request/login_request.dart';
import '../../dto/response/login_response.dart';

part 'auth_api.g.dart';

final authApiProvider = Provider.autoDispose<AuthApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return AuthApi(dio);
});

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio) = _AuthApi;

  @POST(loginEndPoint)
  Future<LoginResponse> login(@Body() LoginRequest loginRequest);

  @POST(changePasswordEndPoint)
  Future<MessageResponse> changePassword(@Body() ChangePasswordRequest body);
}
