import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wala_pos/core/data/rewards/dtos/reward_response.dart';
import '../../../../services/network/network_service.dart';

part 'rewards_api.g.dart';

final rewardsApiProvider = Provider.autoDispose<RewardsApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return RewardsApi(dio);
});

@RestApi()
abstract class RewardsApi {
  factory RewardsApi(Dio dio) = _RewardsApi;

  @GET('/rewards')
  Future<RewardResponse> getRewards();
}
