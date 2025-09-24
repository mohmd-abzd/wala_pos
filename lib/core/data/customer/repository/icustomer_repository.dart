// lib/features/customer/data/repository/icustomer_repository.dart

import 'package:walaa_pos/features/register_customer/shared/registration_result.dart';
import 'package:walaa_pos/features/customer/shared/customer_report.dart';

/// Abstract contract for fetching the combined customer + rewards data.
abstract class ICustomerRepository {
  Future<CustomerReport> fetchCustomerReport(String vcid);

  Future<RegisterCustomerResult> registerCustomer({
    required String name,
    required String email,
    required String phoneNumber,
    required String birthdate, // "YYYY/MM/DD" or ISO, match backend
    required String gender, // true=male, false=female, null=unspecified
  });
}
