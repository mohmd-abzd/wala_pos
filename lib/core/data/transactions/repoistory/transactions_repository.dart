// features/purchase/data/repository/purchase_repository.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:walaa_pos/core/data/transactions/dtos/purchase_request.dart';
import 'package:walaa_pos/core/data/transactions/dtos/transactions_list_response.dart';
import 'package:walaa_pos/core/data/transactions/repoistory/itransactions_repository.dart';
import 'package:walaa_pos/core/data/transactions/source/remote/transactions_api.dart';
import 'package:walaa_pos/features/purchase/domain/purchase_usecase.dart';
import '/common/exception/failure.dart';
import '/common/mixin/dio_exception_mapper.dart';

final transactionsRepositoryProvider =
    Provider.autoDispose<ITransactionsRepository>((ref) {
      final api = ref.watch(transactionsApiProvider);
      return TransactionsRepository(api);
    });

class TransactionsRepository
    with DioExceptionMapper
    implements ITransactionsRepository {
  final TransactionsApi _api;
  TransactionsRepository(this._api);

  @override
  Future<CreatePurchaseResult> createPurchase({
    required int customerId,
    required double amount,
  }) async {
    try {
      final resp = await _api.createPurchase(
        PurchaseRequest(customerId: customerId, amount: amount),
      );
      return CreatePurchaseResult(
        transactionCode: resp.data.transactionCode,
        newTotalPoints: resp.data.newTotalPoints,
        message: resp.message,
      );
    } on DioException catch (e, st) {
      throw mapDioExceptionToFailure(e, st);
    } catch (e, st) {
      throw Failure(
        message: 'تعذر تنفيذ عملية الشراء',
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: st,
      );
    }
  }

  @override
  Future<TransactionsListResponse> getTransactions(
    int customerId,
    int page,
    int take,
  ) async {
    try {
      return await _api.getTransactions(customerId, page, take);
    } on DioException catch (e, st) {
      throw mapDioExceptionToFailure(e, st);
    }
  }

  @override
  Future<void> refundTransaction(int transactionId) async {
    try {
      await _api.refundTransaction(transactionId);
    } on DioException catch (e, st) {
      throw mapDioExceptionToFailure(e, st);
    }
  }
}
