// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseRequestImpl _$$PurchaseRequestImplFromJson(
  Map<String, dynamic> json,
) => _$PurchaseRequestImpl(
  customerId: (json['customerId'] as num).toInt(),
  amount: (json['amount'] as num).toDouble(),
);

Map<String, dynamic> _$$PurchaseRequestImplToJson(
  _$PurchaseRequestImpl instance,
) => <String, dynamic>{
  'customerId': instance.customerId,
  'amount': instance.amount,
};
