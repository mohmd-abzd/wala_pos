// features/purchase/data/source/remote/purchase_api.dart
import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:walaa_pos/core/data/transactions/dtos/purchase_request.dart';
import 'package:walaa_pos/core/data/transactions/dtos/purchase_response.dart';
import 'package:walaa_pos/core/data/transactions/dtos/transactions_list_response.dart';
import '/core/data/remote/network_service.dart';

part 'transactions_api.g.dart';

final transactionsApiProvider = Provider.autoDispose<TransactionsApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return TransactionsApi(dio);
});

@RestApi()
abstract class TransactionsApi {
  factory TransactionsApi(Dio dio) = _TransactionsApi;

  @POST('/transactions/purchase')
  @Headers({'Content-Type': 'application/json'})
  Future<PurchaseResponse> createPurchase(@Body() PurchaseRequest body);

  @GET('/transactions')
  Future<TransactionsListResponse> getTransactions(
    @Query('customerId') int customerId,
    @Query('page') int page,
    @Query('take') int take,
  );

  @POST('/transactions/{transactionId}/refund')
  Future<void> refundTransaction(@Path('transactionId') int transactionId);
}
