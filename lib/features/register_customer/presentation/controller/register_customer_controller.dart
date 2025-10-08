import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/common/util/run_guarded.dart';
import 'package:walaa_pos/features/register_customer/domain/register_customer_usecase.dart';
import 'package:walaa_pos/features/register_customer/presentation/state/register_customer_state.dart';
// import 'package:walaa_pos/features/register_customer/domain/register_customer_usecase.dart';

final registrationControllerProvider =
    AutoDisposeNotifierProvider<
      RegisterCustomerController,
      RegisterCustomerState
    >(RegisterCustomerController.new);

class RegisterCustomerController
    extends AutoDisposeNotifier<RegisterCustomerState> {
  @override
  RegisterCustomerState build() => RegisterCustomerState();

  // Merge partial updates from the form
  void setFormData(Map<String, dynamic> formData) {
    final merged = Map<String, dynamic>.from(state.registrationForm)
      ..addAll(formData);
    state = state.copyWith(registrationForm: merged);
  }

  Future<void> registerCustomer() async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await runGuarded(
      () => ref
          .read(registerCustomerUseCaseProvider)
          .execute(
            name: state.registrationForm['name'],
            email: state.registrationForm['email'],
            phoneNumber: state.registrationForm['phoneNumber'],
            birthdate: state.registrationForm['birthdate'], // "YYYY/MM/DD"
            gender: (state.registrationForm['gender'] as bool)
                ? "MALE"
                : "FEMALE",
          ),
      (msg) => state = state.copyWith(isLoading: false, error: msg),
    );

    if (result != null) {
      state = state.copyWith(
        isLoading: false,
        isRegisterCustomerSuccess: true,
        successMessage: result.message,
        vcid: result.vcid,
      );
    }
  }

  void resetSuccess() {
    state = state.copyWith(isRegisterCustomerSuccess: false);
  }
}
