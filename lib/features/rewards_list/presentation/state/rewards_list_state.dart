import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wala_pos/core/data/rewards/dtos/reward_response.dart';

part 'rewards_list_state.freezed.dart';

@freezed
class RewardsListState with _$RewardsListState {
  factory RewardsListState({
    @Default(false) bool isLoading,
    String? error,
    @Default(<RewardItem>[]) List<RewardItem> rewards,
  }) = _RewardsListState;
}
