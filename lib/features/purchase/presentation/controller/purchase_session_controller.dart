import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/common/util/run_guarded.dart';
import 'package:walaa_pos/core/data/invoice/dto/invoice.dart';
import 'package:walaa_pos/features/purchase/domain/get_latest_invoice_usecase.dart';
import 'package:walaa_pos/features/purchase/domain/purchase_usecase.dart';
import 'package:walaa_pos/features/purchase/presentation/state/purchase_session_state.dart';

@immutable
class PurchaseSessionKey {
  const PurchaseSessionKey({required this.vcid, required this.customerId});

  final String vcid;
  final int customerId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PurchaseSessionKey &&
          vcid == other.vcid &&
          customerId == other.customerId;

  @override
  int get hashCode => Object.hash(vcid, customerId);
}

final purchaseSessionControllerProvider =
    AutoDisposeNotifierProviderFamily<
      PurchaseSessionController,
      PurchaseSessionState,
      PurchaseSessionKey
    >(PurchaseSessionController.new);

class PurchaseSessionController
    extends
        AutoDisposeFamilyNotifier<PurchaseSessionState, PurchaseSessionKey> {
  Timer? _timer;
  bool _fetching = false;

  // Constant timestamp (since repo returns ALL invoices anyway)
  static const String _allInvoicesSinceIso = '1970-01-01T00:00:00.000Z';

  @override
  PurchaseSessionState build(PurchaseSessionKey key) {
    state = PurchaseSessionState(active: true);

    ref.onDispose(() {
      _timer?.cancel();
      _timer = null;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _tick());
    _tick(); // fetch immediately once
    return state;
  }

  void pause() => state = state.copyWith(active: false);

  void resume() => state = state.copyWith(active: true, error: null);

  Future<void> _tick() async {
    if (!state.active) return;
    if (_fetching) return;

    _fetching = true;
    try {
      await _fetchAllInvoices();
    } finally {
      _fetching = false;
    }
  }

  Future<void> _fetchAllInvoices() async {
    // (Optional) show loading only on first load
    if (state.invoices.isEmpty && !state.isLoading) {
      state = state.copyWith(isLoading: true, error: null);
    }

    final result = await runGuarded<List<Invoice>>(
      () => ref
          .read(getLatestInvoiceUseCaseProvider)
          .execute(timeStamp: _allInvoicesSinceIso),
      (msg) => state = state.copyWith(isLoading: false, error: msg),
    );

    if (result == null) return;

    // Keep newest on top (optional)
    result.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    // Replace list (no timestamp/cursor tracking)
    state = state.copyWith(
      isLoading: false,
      error: null,
      invoices: result,
      lastUpdatedAt: DateTime.now(),
    );
  }

  // -----------------------------
  // Submit (kept here since you want it later)
  // -----------------------------
  Future<void> submit({required double amount, String? invoiceId}) async {
    state = state.copyWith(
      isSubmitting: true,
      submitError: null,
      successMessage: null,
    );

    final result = await runGuarded(
      () => ref
          .read(createPurchaseUseCaseProvider)
          .execute(
            customerId: arg.customerId,
            amount: amount,
            invoiceId: invoiceId,
          ),
      (msg) => state = state.copyWith(isSubmitting: false, submitError: msg),
    );

    if (result != null) {
      state = state.copyWith(
        isSubmitting: false,
        successMessage: result.message,
        newTotalPoints: result.newTotalPoints,
        changed: true,
      );
    }
  }
}
