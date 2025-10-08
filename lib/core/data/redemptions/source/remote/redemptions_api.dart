import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:walaa_pos/core/data/redemptions/dtos/redemption_request.dart';
import 'package:walaa_pos/core/data/redemptions/dtos/redemption_response.dart';
import '/core/data/remote/network_service.dart';

part 'redemptions_api.g.dart';

final redemptionApiProvider = Provider.autoDispose<RedemptionApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return RedemptionApi(dio);
});

@RestApi()
abstract class RedemptionApi {
  factory RedemptionApi(Dio dio) = _RedemptionApi;

  @POST('/redemptions')
  @Headers({'Content-Type': 'application/json'})
  Future<RedemptionResponse> createRedemption(@Body() RedemptionRequest body);
}
