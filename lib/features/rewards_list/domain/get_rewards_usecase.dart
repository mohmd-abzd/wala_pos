import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wala_pos/core/data/rewards/repoistory/rewards_repository.dart';
import 'package:wala_pos/core/data/rewards/repoistory/irewards_repository.dart';
import 'package:wala_pos/core/data/rewards/dtos/reward_response.dart';

/// Use‑case: Fetch the list of available rewards.
class GetRewardsUseCase {
  final IRewardsRepository _repo;
  GetRewardsUseCase(this._repo);

  Future<List<RewardItem>> execute() {
    return _repo.fetchRewards();
  }
}

final getRewardsUseCaseProvider = Provider<GetRewardsUseCase>(
  (ref) => GetRewardsUseCase(ref.read(rewardsRepositoryProvider)),
);
