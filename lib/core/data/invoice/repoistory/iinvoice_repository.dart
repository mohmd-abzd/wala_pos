import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/core/data/invoice/dto/invoice.dart';
import 'package:walaa_pos/core/data/invoice/repoistory/fake_invoice_repository.dart';
import 'package:walaa_pos/core/data/invoice/repoistory/invoice_repository.dart';
import 'package:walaa_pos/core/data/invoice/source/invoice_api.dart';

final invoiceRepositoryProvider = Provider.autoDispose<IInvoiceRepository>((
  ref,
) {
  final api = ref.watch(invoiceApiProvider);
  return InvoiceRepository(api);
});

abstract class IInvoiceRepository {
  Future<List<Invoice>> getLatestInvoice({required String timeStamp});
}
