import 'package:wala_pos/common/dtos/message_response.dart';
import 'package:wala_pos/core/data/auth/dto/response/login_response.dart';

abstract interface class IAuthRepository {
  Future<LoginResponse> login(
    String username,
    String password,
    String serialNumber,
  );
  Future<MessageResponse> changePassword(
    String oldPassword,
    String newPassword,
  );
}
