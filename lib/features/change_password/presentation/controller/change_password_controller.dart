import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/features/change_password/domain/change_password_usecase.dart';
import 'package:walaa_pos/features/change_password/presentation/state/change_password_state.dart';
import '/common/util/run_guarded.dart';

final changePasswordControllerProvider =
    AutoDisposeNotifierProvider<ChangePasswordController, ChangePasswordState>(
      ChangePasswordController.new,
    );

class ChangePasswordController
    extends AutoDisposeNotifier<ChangePasswordState> {
  @override
  ChangePasswordState build() => const ChangePasswordState();

  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    state = state.copyWith(isLoading: true, error: null, successMessage: null);

    final result = await runGuarded(
      () => ref
          .read(changePasswordUseCaseProvider)
          .execute(oldPassword, newPassword),
      (msg) => state = state.copyWith(isLoading: false, error: msg),
    );

    if (result != null) {
      state = state.copyWith(
        isLoading: false,
        successMessage: result.message, // ✅ backend-provided message
      );
    }
  }
}
