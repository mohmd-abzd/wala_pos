// features/purchase/data/source/remote/dto/request/purchase_request.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part 'refund_request.freezed.dart';
part 'refund_request.g.dart';

@freezed
class RefundRequest with _$RefundRequest {
  const factory RefundRequest({required String transactionCode}) =
      _RefundRequest;

  factory RefundRequest.fromJson(Map<String, dynamic> json) =>
      _$RefundRequestFromJson(json);
}
