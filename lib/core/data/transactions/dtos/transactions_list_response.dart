import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_list_response.freezed.dart';
part 'transactions_list_response.g.dart';

@freezed
class TransactionsListResponse with _$TransactionsListResponse {
  const factory TransactionsListResponse({
    String? message,
    // 👇 Nest `data` as its own model
    required TransactionsData data,
  }) = _TransactionsListResponse;

  factory TransactionsListResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionsListResponseFromJson(json);
}

// Represents the "data" field containing transactions and total
@freezed
class TransactionsData with _$TransactionsData {
  const factory TransactionsData({
    required List<TransactionDto> transactions,
    required int total,
  }) = _TransactionsData;

  factory TransactionsData.fromJson(Map<String, dynamic> json) =>
      _$TransactionsDataFromJson(json);
}

@freezed
class TransactionDto with _$TransactionDto {
  const factory TransactionDto({
    required int id,
    required String transactionCode,
    required double amount,
    required int points,
    required String transactionTime,
    // add staff/branch fields if you expose them
  }) = _TransactionDto;

  factory TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionDtoFromJson(json);
}
