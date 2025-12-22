// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionsListResponseImpl _$$TransactionsListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$TransactionsListResponseImpl(
  message: json['message'] as String?,
  data: TransactionsData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$TransactionsListResponseImplToJson(
  _$TransactionsListResponseImpl instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};

_$TransactionsDataImpl _$$TransactionsDataImplFromJson(
  Map<String, dynamic> json,
) => _$TransactionsDataImpl(
  transactions: (json['transactions'] as List<dynamic>)
      .map((e) => TransactionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$$TransactionsDataImplToJson(
  _$TransactionsDataImpl instance,
) => <String, dynamic>{
  'transactions': instance.transactions,
  'total': instance.total,
};

_$TransactionDtoImpl _$$TransactionDtoImplFromJson(Map<String, dynamic> json) =>
    _$TransactionDtoImpl(
      id: (json['id'] as num).toInt(),
      transactionCode: json['transactionCode'] as String,
      amount: (json['amount'] as num).toDouble(),
      points: (json['points'] as num).toInt(),
      transactionTime: json['transactionTime'] as String,
      isRefund: json['isRefund'] as bool,
      isRefunded: json['isRefunded'] as bool,
      branch: BranchDto.fromJson(json['branch'] as Map<String, dynamic>),
      staff: StaffDto.fromJson(json['staff'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionDtoImplToJson(
  _$TransactionDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'transactionCode': instance.transactionCode,
  'amount': instance.amount,
  'points': instance.points,
  'transactionTime': instance.transactionTime,
  'isRefund': instance.isRefund,
  'isRefunded': instance.isRefunded,
  'branch': instance.branch,
  'staff': instance.staff,
};

_$BranchDtoImpl _$$BranchDtoImplFromJson(Map<String, dynamic> json) =>
    _$BranchDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$BranchDtoImplToJson(_$BranchDtoImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_$StaffDtoImpl _$$StaffDtoImplFromJson(Map<String, dynamic> json) =>
    _$StaffDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$StaffDtoImplToJson(_$StaffDtoImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
