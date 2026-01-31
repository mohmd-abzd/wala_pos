import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wala_pos/common/util/run_guarded.dart';
import 'package:wala_pos/core/data/invoice/dto/invoice.dart';
import 'package:wala_pos/core/features/settings/settings_storage.dart';
import 'package:wala_pos/features/purchase/domain/purchase_usecase.dart';
import 'package:wala_pos/features/purchase_session/domain/get_latest_invoices.dart';
import 'package:wala_pos/features/purchase_session/presentation/state/purchase_session_state.dart';

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

  /// This timestamp is initialized once per session.
  /// It ensures we only fetch invoices created after this screen was opened.
  late final String _sessionStartIso;

  @override
  PurchaseSessionState build(PurchaseSessionKey key) {
    // Initialize the session timestamp to "now"
    // .toUtc() is usually safer for APIs to avoid timezone confusion
    _sessionStartIso = DateTime.now().toUtc().toIso8601String();

    state = PurchaseSessionState(active: true);

    ref.onDispose(() {
      _timer?.cancel();
      _timer = null;
    });

    // Start the polling timer
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _tick());
    _tick(); // Initial fetch

    return state;
  }

  void pause() => state = state.copyWith(active: false);

  void resume() => state = state.copyWith(active: true, error: null);

  /// Called every second by the timer.
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
    if (state.invoices.isEmpty && !state.isLoading && state.error == null) {
      state = state.copyWith(isLoading: true, error: null);
    }

    final result = await runGuarded<List<Invoice>>(
      () => ref
          .read(getLatestInvoicesUseCaseProvider)
          .execute(timeStamp: _sessionStartIso),
      (msg) => state = state.copyWith(isLoading: false, error: msg),
    );

    if (result == null) return;

    // 1. Sort newest first
    result.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    // 2. Update the state with the list
    state = state.copyWith(
      isLoading: false,
      error: null,
      invoices: result,
      lastUpdatedAt: DateTime.now(),
    );

    // 3. CHECK SETTINGS FOR AUTO-SUBMIT
    if (result.isNotEmpty && state.active) {
      final storage = ref.read(settingsStorageProvider);
      final bool autoAccept = await storage.readAcceptFirst();
      print('Auto-accepting first invoice as per settings is .$autoAccept');

      if (autoAccept) {
        // Pause session immediately so we don't process more ticks while submitting
        pause();

        final firstInvoice = result.first;
        await submit(
          amount: firstInvoice.amount,
          invoiceId: firstInvoice.invoiceId,
        );
      }
    }
  }

  // -----------------------------
  // Submit Purchase
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
