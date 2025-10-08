// lib/features/auth/data/dto/request/change_password_request.dart
import 'package:json_annotation/json_annotation.dart';

part 'change_password_request.g.dart';

@JsonSerializable()
class ChangePasswordRequest {
  final String oldPassword;
  final String newPassword;

  ChangePasswordRequest({required this.oldPassword, required this.newPassword});

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordRequestToJson(this);
}
