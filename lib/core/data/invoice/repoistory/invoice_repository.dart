import 'package:dio/dio.dart';
import 'package:walaa_pos/core/data/invoice/dto/invoice.dart';
import 'package:walaa_pos/core/data/invoice/repoistory/iinvoice_repository.dart';
import 'package:walaa_pos/core/data/invoice/source/invoice_api.dart';

class InvoiceRepository implements IInvoiceRepository {
  InvoiceRepository(this._api);

  final InvoiceApi _api;

  @override
  Future<List<Invoice>> getLatestInvoice({required String timeStamp}) async {
    // timeStamp must be ISO string like: 2024-12-22T10:00:00.000Z

    try {
      final result = await _api
          .getLatestInvoice(timeStamp)
          .timeout(const Duration(seconds: 10));

      print("XXXXXX response invoices=${result.length}");
      return result;
    } on DioException catch (e, st) {
      print("XXXXXX DioException type=${e.type} message=${e.message}");
      print("XXXXXX error=${e.error}"); // ✅ this is key
      print("XXXXXX status=${e.response?.statusCode}");
      print("XXXXXX data=${e.response?.data}");
      print("XXXXXX req=${e.requestOptions.method} ${e.requestOptions.uri}");
      print(st);
      rethrow;
    } catch (e, st) {
      print("XXXXXX unexpected error: $e");
      print(st);
      rethrow;
    }
  }
}
