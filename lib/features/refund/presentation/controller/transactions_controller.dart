import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/common/util/run_guarded.dart';
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
    _getTransactions = ref.read(getTransactionsUseCaseProvider);
    _refundTransaction = ref.read(refundTransactionUseCaseProvider);

    // Schedule initial fetch AFTER state is initialized
    Future.microtask(() => _fetchMore(customerId));

    return TransactionsState.initial();
  }

  Future<void> _fetchMore(int customerId) async {
    if (state.isLoading || !state.hasMore) return;

    state = state.copyWith(isLoading: true);

    final resp = await runGuarded(
      () => _getTransactions.execute(customerId, state.page, 10),
      (msg) => state = state.copyWith(isLoading: false, error: msg),
    );

    if (resp != null) {
      state = state.copyWith(
        isLoading: false,
        page: state.page + 1,
        hasMore: resp.data.transactions.length == 10,
        transactions: [...state.transactions, ...resp.data.transactions],
      );
    }
  }

  Future<void> refund(int transactionId) async {
    final result = await runGuarded<Null>(() async {
      await _refundTransaction.execute(transactionId);
      return null;
    }, (msg) => state = state.copyWith(error: msg));

    if (result != null) {
      state = state.copyWith(
        transactions: state.transactions
            .where((t) => t.id != transactionId)
            .toList(),
      );
    }
  }

  Future<void> loadMore() async => _fetchMore(arg);
}
