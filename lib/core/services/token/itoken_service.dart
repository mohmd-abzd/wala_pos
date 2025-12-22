import '/common/dtos/refresh_token_response.dart';

abstract interface class ITokenService {
  Future<void> storeToken(String accessToken, String refreshToken);

  Future<String?> getAccessToken();

  Future<String?> getRefreshToken();

  Future<void> saveToken(String accessToken, String refreshToken);

  Future<void> clearToken();

  Future<RefreshTokenResponse> refreshToken(String? refreshToken);
}
