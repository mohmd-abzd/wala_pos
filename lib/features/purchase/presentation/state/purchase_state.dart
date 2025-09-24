// features/purchase/presentation/state/purchase_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part 'purchase_state.freezed.dart';

@freezed
class PurchaseState with _$PurchaseState {
  factory PurchaseState({
    @Default(false) bool isLoading,
    String? error,
    String? successMessage,
  }) = _PurchaseState;
}
