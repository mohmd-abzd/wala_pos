import 'package:walaa_pos/common/dtos/message_response.dart';

import '/features/login/domain/session_token.dart';

abstract interface class IAuthRepository {
  Future<SessionTokens> login(
    String username,
    String password,
    String deviceId,
  );
  Future<MessageResponse> changePassword(
    String oldPassword,
    String newPassword,
  );
}
