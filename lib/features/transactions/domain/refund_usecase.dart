// lib/features/transactions/domain/refund_transaction_usecase.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wala_pos/core/data/transactions/repoistory/itransactions_repository.dart';
import 'package:wala_pos/core/data/transactions/repoistory/transactions_repository.dart';

final refundTransactionUseCaseProvider =
    Provider.autoDispose<RefundTransactionUseCase>(
      (ref) =>
          RefundTransactionUseCase(ref.read(transactionsRepositoryProvider)),
    );

class CreateRefundResult {
  final String transactionCode;
  final String? message;
  CreateRefundResult({required this.transactionCode, this.message});
}

class RefundTransactionUseCase {
  final ITransactionsRepository _repo;
  RefundTransactionUseCase(this._repo);

  Future<CreateRefundResult> execute(String transactionCode) {
    return _repo.createRefund(transactionCode);
  }
}
