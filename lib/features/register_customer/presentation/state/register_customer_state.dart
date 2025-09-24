import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_customer_state.freezed.dart';

@freezed
class RegisterCustomerState with _$RegisterCustomerState {
  factory RegisterCustomerState({
    @Default(false) bool isLoading,
    @Default(false) bool isRegisterCustomerSuccess,
    String? successMessage,
    final String? vcid,
    String? error,
    @Default({}) Map<String, dynamic> registrationForm,
  }) = _RegisterCustomerState;
}
