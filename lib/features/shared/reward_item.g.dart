// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardItemImpl _$$RewardItemImplFromJson(Map<String, dynamic> json) =>
    _$RewardItemImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      pointsRequired: (json['pointsRequired'] as num).toInt(),
      redeemable: json['redeemable'] as bool,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$RewardItemImplToJson(_$RewardItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'pointsRequired': instance.pointsRequired,
      'redeemable': instance.redeemable,
      'createdAt': instance.createdAt,
    };
