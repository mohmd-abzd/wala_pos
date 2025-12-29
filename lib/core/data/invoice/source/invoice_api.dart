import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:walaa_pos/core/data/invoice/dto/invoice.dart';
import 'package:walaa_pos/core/services/network/gateway_network_service.dart';

part 'invoice_api.g.dart';

final invoiceApiProvider = FutureProvider.autoDispose<_InvoiceApi>((ref) async {
  final dio = await ref.watch(gatewayDioProvider.future);
  return _InvoiceApi(dio);
});

@RestApi()
abstract class InvoiceApi {
  factory InvoiceApi(Dio dio) = _InvoiceApi;

  /// GET http://{IP}:3000/invoices/latest?after=2024-12-22T10:00:00.000Z
  @GET('/invoices/fakest')
  Future<List<Invoice>> getLatestInvoice(@Query('after') String afterIso);
}
