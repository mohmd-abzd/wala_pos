import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_response.freezed.dart';
part 'reward_response.g.dart';

@freezed
class RewardResponse with _$RewardResponse {
  const factory RewardResponse({String? message, required RewardData data}) =
      _RewardResponse;

  factory RewardResponse.fromJson(Map<String, dynamic> json) =>
      _$RewardResponseFromJson(json);
}

@freezed
class RewardData with _$RewardData {
  const factory RewardData({required List<RewardItem> rewards}) = _RewardData;

  factory RewardData.fromJson(Map<String, dynamic> json) =>
      _$RewardDataFromJson(json);
}

@freezed
class RewardItem with _$RewardItem {
  const factory RewardItem({
    required int id,
    @JsonKey(name: 'name') required String title,
    String? description,
    String? imageUrl,
    @JsonKey(name: 'pointsRequired') required int points,
    required Branch branch,
    DateTime? createdAt,
  }) = _RewardItem;

  factory RewardItem.fromJson(Map<String, dynamic> json) =>
      _$RewardItemFromJson(json);
}

extension RewardItemX on RewardItem {
  String get name => title;
  int get pointsRequired => points;
}

@freezed
class Branch with _$Branch {
  const factory Branch({required int id, required String name}) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}
