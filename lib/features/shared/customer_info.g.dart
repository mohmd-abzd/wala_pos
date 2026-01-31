// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerInfoImpl _$$CustomerInfoImplFromJson(Map<String, dynamic> json) =>
    _$CustomerInfoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      totalPoints: (json['totalPoints'] as num).toInt(),
      cardNumber: json['cardNumber'] as String,
      merchantName: json['merchantName'] as String,
      lastTransaction: json['lastTransaction'] == null
          ? null
          : DateTime.parse(json['lastTransaction'] as String),
    );

Map<String, dynamic> _$$CustomerInfoImplToJson(_$CustomerInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'totalPoints': instance.totalPoints,
      'cardNumber': instance.cardNumber,
      'merchantName': instance.merchantName,
      'lastTransaction': instance.lastTransaction?.toIso8601String(),
    };
