import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/core/data/redemptions/repoistory/iredemptions_repository.dart';
import 'package:walaa_pos/core/data/redemptions/repoistory/redemptions_repository.dart';
import 'package:walaa_pos/features/customer/shared/create_redemption_result.dart';

/// Use-case: Create a new redemption (redeem a reward)
class CreateRedemptionUseCase {
  final IRedemptionsRepository _repo;
  CreateRedemptionUseCase(this._repo);

  Future<CreateRedemptionResult> execute({
    required int customerId,
    required int rewardId,
  }) {
    return _repo.createRedemption(customerId: customerId, rewardId: rewardId);
  }
}

/// Providers for dependency injection
final createRedemptionUseCaseProvider = Provider<CreateRedemptionUseCase>(
  (ref) => CreateRedemptionUseCase(ref.read(redemptionsRepositoryProvider)),
);
