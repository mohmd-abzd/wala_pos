// lib/features/customer/data/repository/icustomer_repository.dart

import 'package:wala_pos/features/register_customer/shared/registration_result.dart';
import 'package:wala_pos/features/shared/customer_info.dart';

/// Abstract contract for fetching the combined customer + rewards data.
abstract class ICustomerRepository {
  Future<CustomerInfo> fetchCustomerInfo(String vcid);

  Future<RegisterCustomerResult> registerCustomer({
    required String name,
    required String email,
    required String phoneNumber,
    required String birthdate, // "YYYY/MM/DD" or ISO, match backend
    required String gender, // true=male, false=female, null=unspecified
  });
}
