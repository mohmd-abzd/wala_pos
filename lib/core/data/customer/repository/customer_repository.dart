// lib/features/customer/data/repository/customer_repository.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:walaa_pos/core/data/customer/dto/request/register_customer_request.dart';
import 'package:walaa_pos/features/customer/shared/customer_report.dart';
import 'package:walaa_pos/core/data/customer/dto/response/customer_response.dart';
import 'package:walaa_pos/core/data/customer/repository/icustomer_repository.dart';
import 'package:walaa_pos/core/data/customer/source/remote/customer_api.dart';
import 'package:walaa_pos/features/register_customer/shared/registration_result.dart';
import '/common/exception/failure.dart';
import '/common/mixin/dio_exception_mapper.dart';

/// Riverpod provider for your repository
final customerRepositoryProvider = Provider.autoDispose<ICustomerRepository>((
  ref,
) {
  final api = ref.watch(customerApiProvider);
  return CustomerRepository(api);
});

class CustomerRepository
    with DioExceptionMapper
    implements ICustomerRepository {
  final CustomerApi _api;
  CustomerRepository(this._api);

  @override
  Future<CustomerReport> fetchCustomerReport(String vcid) async {
    try {
      final customerResp = await _api.getCustomerReport(vcid);

      // Map DTO → domain
      return customerResp.toDomain();
    } on DioException catch (e, st) {
      throw mapDioExceptionToFailure(e, st);
    } catch (e, st) {
      throw Failure(
        message: "An unexpected error occurred. Please try again later.",
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: st,
      );
    }
  }

  @override
  Future<RegisterCustomerResult> registerCustomer({
    required String name,
    required String email,
    required String phoneNumber,
    required String birthdate,
    required String gender,
  }) async {
    try {
      final body = RegisterCustomerRequest(
        name: name,
        email: email,
        phoneNumber: phoneNumber,
        birthdate: birthdate,
        gender: gender,
      );

      final resp = await _api.registerCustomer(body);
      return RegisterCustomerResult(
        vcid: resp.data.vcid,
        customerId: resp.data.customerId,
        message: resp.message,
      );
    } on DioException catch (e, st) {
      throw mapDioExceptionToFailure(e, st);
    } catch (e, st) {
      throw Failure(
        message: "Failed to register customer. Please try again.",
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: st,
      );
    }
  }
}
