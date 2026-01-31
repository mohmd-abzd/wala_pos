import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wala_pos/core/data/customer/repository/customer_repository.dart';
import 'package:wala_pos/core/data/customer/repository/icustomer_repository.dart';
import 'package:wala_pos/features/shared/customer_info.dart';

/// Use‑case: Fetch the current customer’s profile.
class GetCustomerUseCase {
  final ICustomerRepository _repo;
  GetCustomerUseCase(this._repo);

  Future<CustomerInfo> execute(String vcid) {
    return _repo.fetchCustomerInfo(vcid);
  }
}

/// Provider for DI
final getCustomerUseCaseProvider = Provider<GetCustomerUseCase>(
  (ref) => GetCustomerUseCase(ref.read(customerRepositoryProvider)),
);
