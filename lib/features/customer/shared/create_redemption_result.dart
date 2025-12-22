import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_redemption_result.freezed.dart';

@freezed
class CreateRedemptionResult with _$CreateRedemptionResult {
  const factory CreateRedemptionResult({
    required int redemptionId,
    required int newTotalPoints,
    String? message,
  }) = _CreateRedemptionResult;
}
