// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_customer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterCustomerRequestImpl _$$RegisterCustomerRequestImplFromJson(
  Map<String, dynamic> json,
) => _$RegisterCustomerRequestImpl(
  name: json['name'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String,
  birthdate: json['birthdate'] as String,
  gender: json['gender'] as String,
);

Map<String, dynamic> _$$RegisterCustomerRequestImplToJson(
  _$RegisterCustomerRequestImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'birthdate': instance.birthdate,
  'gender': instance.gender,
};
