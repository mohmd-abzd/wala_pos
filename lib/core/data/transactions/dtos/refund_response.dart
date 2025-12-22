import 'package:freezed_annotation/freezed_annotation.dart';
part 'refund_response.freezed.dart';
part 'refund_response.g.dart';

@freezed
class RefundResponse with _$RefundResponse {
  const factory RefundResponse({String? message, required RefundData data}) =
      _RefundResponse;

  factory RefundResponse.fromJson(Map<String, dynamic> json) =>
      _$RefundResponseFromJson(json);
}

@freezed
class RefundData with _$RefundData {
  const factory RefundData({
    required String refundCode,
    required int newTotalPoints,
  }) = _RefundData;

  factory RefundData.fromJson(Map<String, dynamic> json) =>
      _$RefundDataFromJson(json);
}
