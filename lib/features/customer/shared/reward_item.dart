import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_item.freezed.dart';
part 'reward_item.g.dart';

@freezed
class RewardItem with _$RewardItem {
  factory RewardItem({
    required int id,
    required String name,
    String? description,
    String? imageUrl,
    required int pointsRequired,
    required bool redeemable,
    required String createdAt,
  }) = _RewardItem;

  factory RewardItem.fromJson(Map<String, dynamic> json) =>
      _$RewardItemFromJson(json);
}
