import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wala_pos/common/mixin/dio_exception_mapper.dart';
import 'package:wala_pos/core/data/invoice/dto/invoice.dart';
import 'package:wala_pos/core/data/invoice/repoistory/iinvoice_repository.dart';
import 'package:wala_pos/core/data/invoice/source/invoice_api.dart';
import '/common/exception/failure.dart';

final invoiceRepositoryProvider = Provider.autoDispose<IInvoiceRepository>((
  ref,
) {
  return InvoiceRepository(ref);
});

class InvoiceRepository with DioExceptionMapper implements IInvoiceRepository {
  InvoiceRepository(this._ref);
  final Ref _ref;

  @override
  Future<List<Invoice>> getLatestInvoice({required String timeStamp}) async {
    try {
      final api = await _ref.read(
        invoiceApiProvider.future,
      ); // ✅ waits for real baseUrl
      final resp = await api
          .getLatestInvoice(timeStamp)
          .timeout(const Duration(seconds: 10));
      return resp;
    } on DioException catch (e, st) {
      throw mapDioExceptionToFailure(e, st);
    } catch (e, st) {
      throw Failure(
        message: "An unexpected error occurred. Please try again later.",
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: st,
      );
    }
  }
}
