// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redemption_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RedemptionRequestImpl _$$RedemptionRequestImplFromJson(
  Map<String, dynamic> json,
) => _$RedemptionRequestImpl(
  customerId: (json['customerId'] as num).toInt(),
  rewardId: (json['rewardId'] as num).toInt(),
);

Map<String, dynamic> _$$RedemptionRequestImplToJson(
  _$RedemptionRequestImpl instance,
) => <String, dynamic>{
  'customerId': instance.customerId,
  'rewardId': instance.rewardId,
};
