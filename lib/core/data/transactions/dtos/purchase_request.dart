// features/purchase/data/source/remote/dto/request/purchase_request.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchase_request.freezed.dart';
part 'purchase_request.g.dart';

@freezed
class PurchaseRequest with _$PurchaseRequest {
  const factory PurchaseRequest({
    required int customerId,
    required double amount,
  }) = _PurchaseRequest;

  factory PurchaseRequest.fromJson(Map<String, dynamic> json) =>
      _$PurchaseRequestFromJson(json);
}
