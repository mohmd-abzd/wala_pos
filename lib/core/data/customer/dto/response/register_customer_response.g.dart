// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterCustomerResponseImpl _$$RegisterCustomerResponseImplFromJson(
  Map<String, dynamic> json,
) => _$RegisterCustomerResponseImpl(
  message: json['message'] as String?,
  status: json['status'] as String,
  data: RegisterCustomerData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$RegisterCustomerResponseImplToJson(
  _$RegisterCustomerResponseImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'status': instance.status,
  'data': instance.data,
};

_$RegisterCustomerDataImpl _$$RegisterCustomerDataImplFromJson(
  Map<String, dynamic> json,
) => _$RegisterCustomerDataImpl(
  vcid: json['vcid'] as String,
  customerId: (json['customerId'] as num?)?.toInt(),
);

Map<String, dynamic> _$$RegisterCustomerDataImplToJson(
  _$RegisterCustomerDataImpl instance,
) => <String, dynamic>{
  'vcid': instance.vcid,
  'customerId': instance.customerId,
};
