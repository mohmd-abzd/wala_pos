// features/register_customer/domain/register_customer_use_case_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/core/data/customer/repository/customer_repository.dart';
import 'package:walaa_pos/core/data/customer/repository/icustomer_repository.dart';
import 'package:walaa_pos/features/register_customer/shared/registration_result.dart';

/// DI: provide the use case (autoDispose like your login use case)
final registerCustomerUseCaseProvider =
    Provider.autoDispose<RegisterCustomerUseCase>((ref) {
      final repo = ref.watch(customerRepositoryProvider);
      return RegisterCustomerUseCase(repo);
    });

/// Use case — thin orchestrator calling the repository
class RegisterCustomerUseCase {
  final ICustomerRepository _repo;
  RegisterCustomerUseCase(this._repo);

  /// Execute registration. Throws Failure on error (let repo map exceptions).
  /// Accepts a payload map to match your controller; switch to named params later if you prefer.
  ///

  Future<RegisterCustomerResult> execute({
    required String name,
    required String email,
    required String phoneNumber,
    required String birthdate,
    required String gender,
  }) async {
    // Repository should POST and return vcid (+ optional customerId)
    final dto = await _repo.registerCustomer(
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      birthdate: birthdate,
      gender: gender,
    );

    // Map repo/dto → use case result (adapt field names if different)
    return RegisterCustomerResult(vcid: dto.vcid, customerId: dto.customerId);
  }
}
