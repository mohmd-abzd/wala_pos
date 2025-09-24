import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/core/data/transactions/repoistory/itransactions_repository.dart';
import 'package:walaa_pos/core/data/transactions/repoistory/transactions_repository.dart';

final createPurchaseUseCaseProvider =
    Provider.autoDispose<CreatePurchaseUseCase>((ref) {
      final repo = ref.watch(transactionsRepositoryProvider);
      return CreatePurchaseUseCase(repo);
    });

class CreatePurchaseResult {
  final String transactionCode;
  final int newTotalPoints;
  final String? message;
  CreatePurchaseResult({
    required this.transactionCode,
    required this.newTotalPoints,
    this.message,
  });
}

class CreatePurchaseUseCase {
  final ITransactionsRepository _repo;
  CreatePurchaseUseCase(this._repo);

  Future<CreatePurchaseResult> execute({
    required int customerId,
    required double amount,
  }) {
    return _repo.createPurchase(customerId: customerId, amount: amount);
  }
}
