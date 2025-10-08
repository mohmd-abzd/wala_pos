// lib/features/auth/domain/change_password_usecase.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/common/dtos/message_response.dart';
import 'package:walaa_pos/core/data/auth/repository/auth_repository.dart';
import 'package:walaa_pos/core/data/auth/repository/iauth_repository.dart';

final changePasswordUseCaseProvider =
    Provider.autoDispose<ChangePasswordUseCase>((ref) {
      final repo = ref.watch(authRepositoryProvider);
      return ChangePasswordUseCase(repo);
    });

class ChangePasswordUseCase {
  final IAuthRepository _repo;
  ChangePasswordUseCase(this._repo);

  Future<MessageResponse> execute(String oldPassword, String newPassword) {
    return _repo.changePassword(oldPassword, newPassword);
  }
}
