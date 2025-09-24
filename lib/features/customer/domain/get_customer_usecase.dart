import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/core/data/customer/repository/customer_repository.dart';
import 'package:walaa_pos/core/data/customer/repository/icustomer_repository.dart';
import 'package:walaa_pos/features/customer/shared/customer_report.dart';

/// Use‑case: Fetch the current customer’s profile.
class GetCustomerUseCase {
  final ICustomerRepository _repo;
  GetCustomerUseCase(this._repo);

  Future<CustomerReport> execute(String vcid) {
    return _repo.fetchCustomerReport(vcid);
  }
}

/// Provider for DI
final getCustomerUseCaseProvider = Provider<GetCustomerUseCase>(
  (ref) => GetCustomerUseCase(ref.read(customerRepositoryProvider)),
);
