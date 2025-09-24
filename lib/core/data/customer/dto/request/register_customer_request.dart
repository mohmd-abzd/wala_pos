import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_customer_request.freezed.dart';
part 'register_customer_request.g.dart';

@freezed
class RegisterCustomerRequest with _$RegisterCustomerRequest {
  const factory RegisterCustomerRequest({
    required String name,
    required String email,
    required String phoneNumber,
    required String birthdate, // "YYYY/MM/DD" or ISO, match backend
    required String gender, // true=male, false=female, null=unspecified
  }) = _RegisterCustomerRequest;

  factory RegisterCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterCustomerRequestFromJson(json);
}
