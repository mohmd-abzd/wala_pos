// lib/features/customer/data/source/remote/customer_api.dart
import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:walaa_pos/core/data/customer/dto/request/register_customer_request.dart';
import 'package:walaa_pos/core/data/customer/dto/response/register_customer_response.dart';
import 'package:walaa_pos/core/data/remote/endpoint.dart';
import 'package:walaa_pos/core/data/remote/network_service.dart';
import 'package:walaa_pos/core/data/customer/dto/response/customer_response.dart';

part 'customer_api.g.dart';

final customerApiProvider = Provider.autoDispose<CustomerApi>((ref) {
  final dio = ref.watch(networkServiceProvider);

  return CustomerApi(dio);
});

@RestApi()
abstract class CustomerApi {
  factory CustomerApi(Dio dio) = _CustomerApi;

  @GET(customerEndPoint)
  Future<CustomerResponse> getCustomerReport(@Path('vcid') String vcid);

  @POST('/customers/register') // adjust if your route differs
  @Headers(<String, dynamic>{"Content-Type": "application/json"})
  Future<RegisterCustomerResponse> registerCustomer(
    @Body() RegisterCustomerRequest body,
  );
}
