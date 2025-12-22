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
    required bool isRefund,
    required bool isRefunded,
    required BranchDto branch,
    required StaffDto staff,
  }) = _TransactionDto;

  factory TransactionDto.fromJson(Map<String, dynamic> json) =>
      _$TransactionDtoFromJson(json);
}

@freezed
class BranchDto with _$BranchDto {
  const factory BranchDto({required int id, required String name}) = _BranchDto;

  factory BranchDto.fromJson(Map<String, dynamic> json) =>
      _$BranchDtoFromJson(json);
}

@freezed
class StaffDto with _$StaffDto {
  const factory StaffDto({required int id, required String name}) = _StaffDto;

  factory StaffDto.fromJson(Map<String, dynamic> json) =>
      _$StaffDtoFromJson(json);
}
