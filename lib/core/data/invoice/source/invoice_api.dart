import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:walaa_pos/core/data/invoice/dto/invoice.dart';
import 'package:walaa_pos/core/services/network/gateway_network_service.dart';

part 'invoice_api.g.dart';

final invoiceApiProvider = Provider.autoDispose<InvoiceApi>((ref) {
  final dio = ref.watch(gatewayNetworkServiceProvider);
  return InvoiceApi(dio);
});

@RestApi()
abstract class InvoiceApi {
  factory InvoiceApi(Dio dio) = _InvoiceApi;

  /// GET http://{IP}:3000/invoices/latest?after=2024-12-22T10:00:00.000Z
  @GET('/invoices/latest')
  Future<List<Invoice>> getLatestInvoice(@Query('after') String afterIso);
}
