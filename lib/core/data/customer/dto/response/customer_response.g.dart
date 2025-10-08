// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerResponseImpl _$$CustomerResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CustomerResponseImpl(
  data: CustomerData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CustomerResponseImplToJson(
  _$CustomerResponseImpl instance,
) => <String, dynamic>{'data': instance.data};

_$CustomerDataImpl _$$CustomerDataImplFromJson(Map<String, dynamic> json) =>
    _$CustomerDataImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      totalPoints: (json['totalPoints'] as num).toInt(),
      rewards: (json['rewards'] as List<dynamic>)
          .map((e) => RewardData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CustomerDataImplToJson(_$CustomerDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'totalPoints': instance.totalPoints,
      'rewards': instance.rewards,
    };

_$RewardDataImpl _$$RewardDataImplFromJson(Map<String, dynamic> json) =>
    _$RewardDataImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      pointsRequired: (json['pointsRequired'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      redeemable: json['redeemable'] as bool,
    );

Map<String, dynamic> _$$RewardDataImplToJson(_$RewardDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'pointsRequired': instance.pointsRequired,
      'createdAt': instance.createdAt,
      'redeemable': instance.redeemable,
    };
