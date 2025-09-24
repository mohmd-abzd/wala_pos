// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerCardImpl _$$CustomerCardImplFromJson(Map<String, dynamic> json) =>
    _$CustomerCardImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      totalPoints: (json['totalPoints'] as num).toInt(),
    );

Map<String, dynamic> _$$CustomerCardImplToJson(_$CustomerCardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'totalPoints': instance.totalPoints,
    };
