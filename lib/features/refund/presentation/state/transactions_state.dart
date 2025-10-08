import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walaa_pos/core/data/transactions/dtos/transactions_list_response.dart';

part 'transactions_state.freezed.dart';

@freezed
class TransactionsState with _$TransactionsState {
  const factory TransactionsState({
    required List<TransactionDto> transactions,
    required bool isLoading,
    required bool hasMore,
    required int page,
    String? error,
  }) = _TransactionsState;

  factory TransactionsState.initial() => const TransactionsState(
    transactions: [],
    isLoading: false,
    hasMore: true,
    page: 1,
    error: null,
  );
}
