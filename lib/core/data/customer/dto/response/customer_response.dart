import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walaa_pos/features/customer/shared/customer_card.dart';
import 'package:walaa_pos/features/customer/shared/customer_report.dart';
import 'package:walaa_pos/features/customer/shared/reward_item.dart';

part 'customer_response.freezed.dart';
part 'customer_response.g.dart';

@freezed
class CustomerResponse with _$CustomerResponse {
  const factory CustomerResponse({
    @JsonKey(name: 'data') required CustomerData data,
  }) = _CustomerResponse;

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);
}

@freezed
class CustomerData with _$CustomerData {
  const factory CustomerData({
    required int id,
    required String name,
    required String phoneNumber,
    required String email,
    required int totalPoints,
    required List<RewardData> rewards,
  }) = _CustomerData;

  factory CustomerData.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataFromJson(json);
}

@freezed
class RewardData with _$RewardData {
  const factory RewardData({
    required int id,
    required String name,
    String? description,
    String? imageUrl,
    required int pointsRequired,
    required String createdAt,
    required bool redeemable,
  }) = _RewardData;

  factory RewardData.fromJson(Map<String, dynamic> json) =>
      _$RewardDataFromJson(json);
}

/// --- MAPPERS: convert DTOs to your domain models ---

extension CustomerResponseMapper on CustomerResponse {
  CustomerReport toDomain() => CustomerReport(
    customer: data.toDomain(),
    rewards: data.rewards.map((r) => r.toDomain()).toList(),
  );
}

extension CustomerDataMapper on CustomerData {
  CustomerCard toDomain() => CustomerCard(
    id: id,
    name: name,
    phoneNumber: phoneNumber,
    email: email,
    totalPoints: totalPoints,
  );
}

extension RewardDataMapper on RewardData {
  RewardItem toDomain() => RewardItem(
    id: id,
    name: name,
    description: description,
    imageUrl: imageUrl,
    pointsRequired: pointsRequired,
    createdAt: createdAt,
    redeemable: redeemable,
  );
}
