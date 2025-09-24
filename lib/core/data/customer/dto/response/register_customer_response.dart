import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_customer_response.g.dart';

part 'register_customer_response.freezed.dart';

@freezed
class RegisterCustomerResponse with _$RegisterCustomerResponse {
  const factory RegisterCustomerResponse({
    String? message,
    required String status,
    required RegisterCustomerData data,
  }) = _RegisterCustomerResponse;

  factory RegisterCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterCustomerResponseFromJson(json);
}

@freezed
class RegisterCustomerData with _$RegisterCustomerData {
  const factory RegisterCustomerData({required String vcid, int? customerId}) =
      _RegisterCustomerData;

  factory RegisterCustomerData.fromJson(Map<String, dynamic> json) =>
      _$RegisterCustomerDataFromJson(json);
}
