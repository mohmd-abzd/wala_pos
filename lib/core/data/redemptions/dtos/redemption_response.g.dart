// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redemption_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RedemptionResponseImpl _$$RedemptionResponseImplFromJson(
  Map<String, dynamic> json,
) => _$RedemptionResponseImpl(
  message: json['message'] as String?,
  data: RedemptionData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$RedemptionResponseImplToJson(
  _$RedemptionResponseImpl instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};

_$RedemptionDataImpl _$$RedemptionDataImplFromJson(Map<String, dynamic> json) =>
    _$RedemptionDataImpl(
      redemptionCode: json['redemptionCode'] as String,
      remainingPoints: (json['remainingPoints'] as num).toInt(),
    );

Map<String, dynamic> _$$RedemptionDataImplToJson(
  _$RedemptionDataImpl instance,
) => <String, dynamic>{
  'redemptionCode': instance.redemptionCode,
  'remainingPoints': instance.remainingPoints,
};
