import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wala_pos/core/data/invoice/dto/invoice.dart';
import 'package:wala_pos/core/data/invoice/repoistory/iinvoice_repository.dart';
import 'package:wala_pos/core/data/invoice/repoistory/invoice_repository.dart';

/// Use-case: Fetch latest invoices after a given timestamp (ISO string).
class GetLatestInvoicesUseCase {
  final IInvoiceRepository _repo;
  GetLatestInvoicesUseCase(this._repo);

  Future<List<Invoice>> execute({required String timeStamp}) {
    return _repo.getLatestInvoice(timeStamp: timeStamp);
  }
}

/// Provider for DI
final getLatestInvoicesUseCaseProvider = Provider<GetLatestInvoicesUseCase>(
  (ref) => GetLatestInvoicesUseCase(ref.read(invoiceRepositoryProvider)),
);
