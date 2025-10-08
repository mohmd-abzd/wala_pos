import 'package:freezed_annotation/freezed_annotation.dart';

part 'redemption_request.freezed.dart';
part 'redemption_request.g.dart';

@freezed
class RedemptionRequest with _$RedemptionRequest {
  const factory RedemptionRequest({
    required int customerId,
    required int rewardId,
  }) = _RedemptionRequest;

  factory RedemptionRequest.fromJson(Map<String, dynamic> json) =>
      _$RedemptionRequestFromJson(json);
}
