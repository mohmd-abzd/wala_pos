import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/core/data/invoice/dto/invoice.dart';
import 'package:walaa_pos/core/data/invoice/repoistory/iinvoice_repository.dart';

/// Use-case: Fetch latest invoice after a timestamp (ISO string).
class GetLatestInvoiceUseCase {
  final IInvoiceRepository _repo;
  GetLatestInvoiceUseCase(this._repo);

  Future<List<Invoice>> execute({required String timeStamp}) {
    return _repo.getLatestInvoice(timeStamp: timeStamp);
  }
}

/// Provider for DI
final getLatestInvoiceUseCaseProvider = Provider<GetLatestInvoiceUseCase>(
  (ref) => GetLatestInvoiceUseCase(ref.read(invoiceRepositoryProvider)),
);
