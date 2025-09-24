// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionsListResponseImpl _$$TransactionsListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$TransactionsListResponseImpl(
  status: json['status'] as String,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>)
      .map((e) => TransactionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$$TransactionsListResponseImplToJson(
  _$TransactionsListResponseImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
  'total': instance.total,
};

_$TransactionDtoImpl _$$TransactionDtoImplFromJson(Map<String, dynamic> json) =>
    _$TransactionDtoImpl(
      id: (json['id'] as num).toInt(),
      transactionCode: json['transactionCode'] as String,
      amount: (json['amount'] as num).toDouble(),
      points: (json['points'] as num).toInt(),
      transactionTime: json['transactionTime'] as String,
    );

Map<String, dynamic> _$$TransactionDtoImplToJson(
  _$TransactionDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'transactionCode': instance.transactionCode,
  'amount': instance.amount,
  'points': instance.points,
  'transactionTime': instance.transactionTime,
};
