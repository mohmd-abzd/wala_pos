import 'package:freezed_annotation/freezed_annotation.dart';

part 'redemption_response.freezed.dart';
part 'redemption_response.g.dart';

@freezed
class RedemptionResponse with _$RedemptionResponse {
  const factory RedemptionResponse({
    String? message,
    required RedemptionData data,
  }) = _RedemptionResponse;

  factory RedemptionResponse.fromJson(Map<String, dynamic> json) =>
      _$RedemptionResponseFromJson(json);
}

@freezed
class RedemptionData with _$RedemptionData {
  const factory RedemptionData({
    required int redemptionId,
    required int newTotalPoints,
  }) = _RedemptionData;

  factory RedemptionData.fromJson(Map<String, dynamic> json) =>
      _$RedemptionDataFromJson(json);
}
