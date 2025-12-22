import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @JsonKey(name: "data") required LoginData data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class LoginData with _$LoginData {
  const factory LoginData({
    @JsonKey(name: "accessToken") required String accessToken,
    @JsonKey(name: "refreshToken") required String refreshToken,
    @JsonKey(name: "profile") required Profile profile,
  }) = _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}

@freezed
class Profile with _$Profile {
  const factory Profile({
    required int id,
    required String name,
    required String username,
    required String phoneNumber,
    required int merchantId,
    required String merchantName,
    String? merchantLogo,
    required int branchId,
    required String branchName,
    String? merchantType,
    double? pointsRate,
    int? maxPoints,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
