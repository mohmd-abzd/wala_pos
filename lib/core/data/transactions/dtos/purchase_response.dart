// features/purchase/data/source/remote/dto/response/purchase_response.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchase_response.freezed.dart';
part 'purchase_response.g.dart';

@freezed
class PurchaseResponse with _$PurchaseResponse {
  const factory PurchaseResponse({
    required String status,
    String? message,
    required PurchaseData data,
  }) = _PurchaseResponse;

  factory PurchaseResponse.fromJson(Map<String, dynamic> json) =>
      _$PurchaseResponseFromJson(json);
}

@freezed
class PurchaseData with _$PurchaseData {
  const factory PurchaseData({
    required String transactionCode,
    required int newTotalPoints,
  }) = _PurchaseData;

  factory PurchaseData.fromJson(Map<String, dynamic> json) =>
      _$PurchaseDataFromJson(json);
}
