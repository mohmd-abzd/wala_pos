import 'package:walaa_pos/core/data/transactions/dtos/transactions_list_response.dart';
import 'package:walaa_pos/features/purchase/domain/purchase_usecase.dart';

abstract class ITransactionsRepository {
  Future<CreatePurchaseResult> createPurchase({
    required int customerId,
    required double amount,
  });

  Future<TransactionsListResponse> getTransactions(
    int customerId,
    int page,
    int take,
  );
  Future<void> refundTransaction(int transactionId);
}
