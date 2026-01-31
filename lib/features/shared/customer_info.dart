import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_info.freezed.dart';
part 'customer_info.g.dart';

@freezed
class CustomerInfo with _$CustomerInfo {
  factory CustomerInfo({
    required int id,
    required String name,
    required String phoneNumber,
    required String email,
    required int totalPoints,
    required String cardNumber,
    required String merchantName,
    required DateTime? lastTransaction,
  }) = _CustomerInfo;
  factory CustomerInfo.fromJson(Map<String, dynamic> json) =>
      _$CustomerInfoFromJson(json);
}
