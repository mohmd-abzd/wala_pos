import 'package:wala_pos/core/data/rewards/dtos/reward_response.dart';

abstract class IRewardsRepository {
  Future<List<RewardItem>> fetchRewards();
}
