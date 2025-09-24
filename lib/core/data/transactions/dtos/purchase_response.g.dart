// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseResponseImpl _$$PurchaseResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PurchaseResponseImpl(
  status: json['status'] as String,
  message: json['message'] as String?,
  data: PurchaseData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PurchaseResponseImplToJson(
  _$PurchaseResponseImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

_$PurchaseDataImpl _$$PurchaseDataImplFromJson(Map<String, dynamic> json) =>
    _$PurchaseDataImpl(
      transactionCode: json['transactionCode'] as String,
      newTotalPoints: (json['newTotalPoints'] as num).toInt(),
    );

Map<String, dynamic> _$$PurchaseDataImplToJson(_$PurchaseDataImpl instance) =>
    <String, dynamic>{
      'transactionCode': instance.transactionCode,
      'newTotalPoints': instance.newTotalPoints,
    };
