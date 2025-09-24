// lib/features/transactions/domain/get_transactions_usecase.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/core/data/transactions/dtos/transactions_list_response.dart';
import 'package:walaa_pos/core/data/transactions/repoistory/itransactions_repository.dart';
import 'package:walaa_pos/core/data/transactions/repoistory/transactions_repository.dart';

class GetTransactionsUseCase {
  final ITransactionsRepository _repo;
  GetTransactionsUseCase(this._repo);

  Future<TransactionsListResponse> execute(int customerId, int page, int take) {
    return _repo.getTransactions(customerId, page, take);
  }
}

final getTransactionsUseCaseProvider =
    Provider.autoDispose<GetTransactionsUseCase>(
      (ref) => GetTransactionsUseCase(ref.read(transactionsRepositoryProvider)),
    );

// lib/features/transactions/domain/refund_transaction_usecase.dart
class RefundTransactionUseCase {
  final ITransactionsRepository _repo;
  RefundTransactionUseCase(this._repo);

  Future<void> execute(int transactionId) {
    return _repo.refundTransaction(transactionId);
  }
}

final refundTransactionUseCaseProvider =
    Provider.autoDispose<RefundTransactionUseCase>(
      (ref) =>
          RefundTransactionUseCase(ref.read(transactionsRepositoryProvider)),
    );
