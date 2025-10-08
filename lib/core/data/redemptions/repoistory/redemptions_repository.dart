import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:walaa_pos/core/data/redemptions/dtos/redemption_request.dart';
import 'package:walaa_pos/core/data/redemptions/repoistory/iredemptions_repository.dart';
import 'package:walaa_pos/core/data/redemptions/source/remote/redemptions_api.dart';
import 'package:walaa_pos/features/customer/shared/create_redemption_result.dart';
import '/common/exception/failure.dart';
import '/common/mixin/dio_exception_mapper.dart';

final redemptionsRepositoryProvider =
    Provider.autoDispose<IRedemptionsRepository>((ref) {
      final api = ref.watch(redemptionApiProvider);
      return RedemptionsRepository(api);
    });

class RedemptionsRepository
    with DioExceptionMapper
    implements IRedemptionsRepository {
  final RedemptionApi _api;
  RedemptionsRepository(this._api);

  @override
  Future<CreateRedemptionResult> createRedemption({
    required int customerId,
    required int rewardId,
  }) async {
    try {
      final resp = await _api.createRedemption(
        RedemptionRequest(customerId: customerId, rewardId: rewardId),
      );
      return CreateRedemptionResult(
        redemptionCode: resp.data.redemptionCode,
        remainingPoints: resp.data.remainingPoints,
        message: resp.message,
      );
    } on DioException catch (e, st) {
      throw mapDioExceptionToFailure(e, st);
    } catch (e, st) {
      throw Failure(
        message: 'تعذر تنفيذ عملية الاستبدال',
        exception: e is Exception ? e : Exception(e.toString()),
        stackTrace: st,
      );
    }
  }
}
