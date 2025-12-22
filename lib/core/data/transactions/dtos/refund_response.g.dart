// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefundResponseImpl _$$RefundResponseImplFromJson(Map<String, dynamic> json) =>
    _$RefundResponseImpl(
      message: json['message'] as String?,
      data: RefundData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RefundResponseImplToJson(
  _$RefundResponseImpl instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};

_$RefundDataImpl _$$RefundDataImplFromJson(Map<String, dynamic> json) =>
    _$RefundDataImpl(
      refundCode: json['refundCode'] as String,
      newTotalPoints: (json['newTotalPoints'] as num).toInt(),
    );

Map<String, dynamic> _$$RefundDataImplToJson(_$RefundDataImpl instance) =>
    <String, dynamic>{
      'refundCode': instance.refundCode,
      'newTotalPoints': instance.newTotalPoints,
    };
