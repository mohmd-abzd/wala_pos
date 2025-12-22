import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/common/util/run_guarded.dart';
import 'package:walaa_pos/features/transactions/domain/refund_usecase.dart';
import 'package:walaa_pos/features/transactions/presentation/state/transactions_state.dart';
import '../../domain/get_transactions_usecase.dart';

final transactionsControllerProvider =
    AutoDisposeNotifierProviderFamily<
      TransactionsController,
      TransactionsState,
      int
    >(TransactionsController.new);

class TransactionsController
    extends AutoDisposeFamilyNotifier<TransactionsState, int> {
  @override
  TransactionsState build(int customerId) {
    // Schedule initial fetch AFTER state is initialized
    Future.microtask(() => _fetchMore(customerId));

    return TransactionsState.initial();
  }

  Future<void> _fetchMore(int customerId) async {
    if (state.isLoading || !state.hasMore) return;

    state = state.copyWith(isLoading: true);

    final resp = await runGuarded(
      () => ref
          .read(getTransactionsUseCaseProvider)
          .execute(customerId, state.page, 10),
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

  Future<void> refund(String transactionCode) async {
    // start per-item spinner & clear old messages
    state = state.copyWith(
      refundingCode: null,
      error: null,
      successMessage: null,
      isLoading: true,
    );

    final result = await runGuarded(() async {
      return await ref
          .read(refundTransactionUseCaseProvider)
          .execute(transactionCode);
    }, (msg) => state = state.copyWith(error: msg));

    if (result != null) {
      state = state.copyWith(
        changed: true,
        isLoading: false,
        successMessage: "تم استرجاع المعاملة (${result.transactionCode}) بنجاح",
        transactions: state.transactions.map((t) {
          if (t.transactionCode == transactionCode) {
            return t.copyWith(isRefunded: true, isRefund: true);
          }
          return t;
        }).toList(),
      );
    }
  }

  Future<void> loadMore() async => _fetchMore(arg);
}
