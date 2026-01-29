import 'package:wala_pos/core/data/transactions/dtos/transactions_list_response.dart';
import 'package:wala_pos/features/purchase/domain/purchase_usecase.dart';
import 'package:wala_pos/features/transactions/domain/refund_usecase.dart';

abstract class ITransactionsRepository {
  Future<CreatePurchaseResult> createPurchase({
    required int customerId,
    required double amount,
    String? invoiceId,
  });

  Future<TransactionsListResponse> getTransactions(
    int customerId,
    int page,
    int take,
  );
  Future<CreateRefundResult> createRefund(String transactionCode);
}
