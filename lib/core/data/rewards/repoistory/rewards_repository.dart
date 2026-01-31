import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:wala_pos/core/data/rewards/dtos/reward_response.dart';
import 'package:wala_pos/core/data/rewards/repoistory/irewards_repository.dart';
import 'package:wala_pos/core/data/rewards/source/remote/rewards_api.dart';
import '/common/exception/failure.dart';
import '/common/mixin/dio_exception_mapper.dart';

final rewardsRepositoryProvider = Provider.autoDispose<IRewardsRepository>((
  ref,
) {
  final api = ref.watch(rewardsApiProvider);
  return RewardsRepository(api);
});

class RewardsRepository with DioExceptionMapper implements IRewardsRepository {
  final RewardsApi _api;
  RewardsRepository(this._api);

  @override
  Future<List<RewardItem>> fetchRewards() async {
    try {
      final resp = await _api.getRewards();
      return resp.data.rewards;
    } on DioException catch (e, st) {
      throw mapDioExceptionToFailure(e, st);
    } catch (e, st) {
      throw Failure(
        message: 'تعذر جلب قائمة المكافآت',
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: st,
      );
    }
  }
}
