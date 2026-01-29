import 'dart:math';

import 'package:wala_pos/core/data/invoice/dto/invoice.dart';
import 'package:wala_pos/core/data/invoice/repoistory/iinvoice_repository.dart';

class FakeInvoiceRepository implements IInvoiceRepository {
  static final List<Invoice> _store = <Invoice>[];
  static final Random _rng = Random();

  @override
  Future<List<Invoice>> getLatestInvoice({required String timeStamp}) async {
    // Optional: simulate latency
    await Future<void>.delayed(const Duration(milliseconds: 120));

    // Add 0..2 new invoices per call
    final int newCount = _rng.nextInt(3);

    for (int i = 0; i < newCount; i++) {
      final inv = Invoice(
        invoiceId: 'فاتورة-${10000 + _rng.nextInt(90000)}',
        amount: double.parse(
          (5 + _rng.nextInt(200) + _rng.nextDouble()).toStringAsFixed(2),
        ),
        createdAt: DateTime.now(),
      );

      // newest first
      _store.insert(0, inv);
    }

    // Return a *modifiable* copy (important: caller may sort/mutate)
    return List<Invoice>.from(_store);
  }
}
