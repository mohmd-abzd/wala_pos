import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wala_pos/features/shared/customer_info.dart';

part 'customer_response.freezed.dart';
part 'customer_response.g.dart';

@freezed
class CustomerResponse with _$CustomerResponse {
  const factory CustomerResponse({
    @JsonKey(name: 'data') required CustomerData data,
  }) = _CustomerResponse;

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);
}

@freezed
class CustomerData with _$CustomerData {
  const factory CustomerData({
    required int id,
    required String name,
    required String phoneNumber,
    required String email,
    required int totalPoints,
    required String cardNumber,
    required String merchantName,
    required DateTime? lastTransaction,
  }) = _CustomerData;

  factory CustomerData.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataFromJson(json);
}

/// --- MAPPERS: convert DTOs to your domain models ---

extension CustomerDataMapper on CustomerData {
  CustomerInfo toDomain() => CustomerInfo(
    id: id,
    name: name,
    phoneNumber: phoneNumber,
    email: email,
    totalPoints: totalPoints,
    cardNumber: cardNumber,
    merchantName: merchantName,
    lastTransaction: lastTransaction,
  );
}
