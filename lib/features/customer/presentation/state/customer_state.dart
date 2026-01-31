import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wala_pos/features/shared/customer_info.dart';

part 'customer_state.freezed.dart';

@freezed
class CustomerState with _$CustomerState {
  factory CustomerState({
    @Default(false) bool isLoading,
    String? error,
    String? successMessage,

    required CustomerInfo customer,
  }) = _CustomerState;
}
