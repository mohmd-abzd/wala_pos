import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/features/refund/presentation/state/transactions_state.dart';
import '../../domain/get_transactions_usecase.dart';

final transactionsControllerProvider =
    AutoDisposeNotifierProviderFamily<
      TransactionsController,
      TransactionsState,
      int
    >(TransactionsController.new);

class TransactionsController
    extends AutoDisposeFamilyNotifier<TransactionsState, int> {
  late final GetTransactionsUseCase _getTransactions;
  late final RefundTransactionUseCase _refundTransaction;

  @override
  TransactionsState build(int customerId) {
    print("build");
    _getTransactions = ref.read(getTransactionsUseCaseProvider);
    _refundTransaction = ref.read(refundTransactionUseCaseProvider);

    // Schedule initial fetch AFTER state is initialized
    Future.microtask(() => _fetchMore(customerId));

    return TransactionsState.initial();
  }

  Future<void> _fetchMore(int customerId) async {
    print("_fetchMore");
    if (state.isLoading || !state.hasMore) return;
    state = state.copyWith(isLoading: true);

    final resp = await _getTransactions.execute(customerId, state.page, 10);

    state = state.copyWith(
      isLoading: false,
      page: state.page + 1,
      hasMore: resp.data.length == 10,
      transactions: [...state.transactions, ...resp.data],
    );
  }

  Future<void> refund(int transactionId) async {
    await _refundTransaction.execute(transactionId);
    state = state.copyWith(
      transactions: state.transactions
          .where((t) => t.id != transactionId)
          .toList(),
    );
  }

  Future<void> loadMore() async => _fetchMore(arg);
}
