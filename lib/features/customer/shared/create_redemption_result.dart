import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_redemption_result.freezed.dart';

@freezed
class CreateRedemptionResult with _$CreateRedemptionResult {
  const factory CreateRedemptionResult({
    required String redemptionCode,
    required int remainingPoints,
    String? message,
  }) = _CreateRedemptionResult;
}
