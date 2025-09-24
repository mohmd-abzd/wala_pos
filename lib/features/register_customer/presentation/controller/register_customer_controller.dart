import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    // Reset error, set loading
    state = state.copyWith(isLoading: true, error: null);

    // --- Read fields exactly as your form sends them ---
    final name = state.registrationForm['name'];
    final email = state.registrationForm['email'];
    final phoneNumber = state.registrationForm['phoneNumber'];
    final birthdate =
        state.registrationForm['birthdate']; // "YYYY/MM/DD" or null
    final gender = (state.registrationForm['gender'] as bool)
        ? "MALE"
        : "FEMALE"; // null=unspecified, true=male, false=female

    try {
      final result = await ref
          .read(registerCustomerUseCaseProvider)
          .execute(
            name: name,
            email: email,
            phoneNumber: phoneNumber,
            birthdate: birthdate,
            gender: gender,
          );

      // If it succeeds:
      state = state.copyWith(
        isLoading: false,
        isRegisterCustomerSuccess: true,
        successMessage: result.message,
        vcid: result.vcid,
      );
    } catch (e, st) {
      // Wrap any error in a friendly message for the UI SnackBar
      // (If you have a Failure type, map to it here)
      state = state.copyWith(
        isLoading: false,
        error: 'حدث خطأ غير متوقع. حاول مرة أخرى.',
      );
      // Optional: log e/st somewhere (Crashlytics/console)
    }
  }

  void resetSuccess() {
    state = state.copyWith(isRegisterCustomerSuccess: false);
  }
}
