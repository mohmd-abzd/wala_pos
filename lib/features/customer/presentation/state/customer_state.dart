import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walaa_pos/features/customer/shared/customer_card.dart';
import 'package:walaa_pos/features/customer/shared/reward_item.dart';

part 'customer_state.freezed.dart';

@freezed
class CustomerState with _$CustomerState {
  factory CustomerState({
    @Default(false) bool isLoading,
    String? error,
    String? successMessage,

    required CustomerCard customer,
    required List<RewardItem> rewards,
  }) = _CustomerState;
}
