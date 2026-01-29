import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wala_pos/core/data/invoice/dto/invoice.dart';

part 'purchase_session_state.freezed.dart';

@freezed
class PurchaseSessionState with _$PurchaseSessionState {
  factory PurchaseSessionState({
    // polling
    @Default(false) bool isLoading,
    String? error,
    @Default(true) bool active,
    @Default(<Invoice>[]) List<Invoice> invoices,
    DateTime? lastUpdatedAt,

    // selection
    Invoice? selectedInvoice,

    // submit
    @Default(false) bool isSubmitting,
    String? submitError,
    String? successMessage,
    @Default(false) bool changed,
    int? newTotalPoints,
  }) = _PurchaseSessionState;
}
