import 'package:walaa_pos/features/customer/shared/create_redemption_result.dart';

abstract class IRedemptionsRepository {
  Future<CreateRedemptionResult> createRedemption({
    required int customerId,
    required int rewardId,
  });
}
