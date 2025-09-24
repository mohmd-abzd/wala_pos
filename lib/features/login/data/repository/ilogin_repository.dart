import 'package:walaa_pos/features/login/domain/session_token.dart';

abstract interface class ILoginRepository {
  Future<SessionTokens> login(String username, String password);
}
