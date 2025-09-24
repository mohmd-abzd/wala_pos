import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_list_response.freezed.dart';
part 'transactions_list_response.g.dart';

@freezed
class TransactionsListResponse with _$TransactionsListResponse {
  const factory TransactionsListResponse({
    required String status,
    String? message,
    required List<TransactionDto> data,
    required int total,
  }) = _TransactionsListResponse;

  factory TransactionsListResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionsListResponseFromJson(json);
}

@freezed
class TransactionDto with _$TransactionDto {
  const factory TransactionDto({
    required int id,
    required String transactionCode,
    required double amount,
    required int points,
    required String transactionTime,
  }) = _TransactionDto;

  factory TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionDtoFromJson(json);
}
