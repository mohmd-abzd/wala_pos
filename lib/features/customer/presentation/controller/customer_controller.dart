import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/features/customer/domain/get_customer_usecase.dart';
import 'package:walaa_pos/features/customer/domain/redemption_usecase.dart';
import 'package:walaa_pos/features/customer/presentation/state/customer_state.dart';
import 'package:walaa_pos/features/customer/shared/create_redemption_result.dart';

final customerControllerProvider =
    AutoDisposeAsyncNotifierProviderFamily<
      CustomerController,
      CustomerState,
      String
    >(CustomerController.new);

class CustomerController
    extends AutoDisposeFamilyAsyncNotifier<CustomerState, String> {
  late String _vcid;

  @override
  Future<CustomerState> build(String vcid) async {
    _vcid = vcid;

    final customerReport = await ref
        .read(getCustomerUseCaseProvider)
        .execute(vcid);

    return CustomerState(
      customer: customerReport.customer,
      rewards: customerReport.rewards,
    );
  }

  Future<CreateRedemptionResult> redeemReward({required int rewardId}) async {
    final customerId = state.value!.customer.id;
    final result = await ref
        .read(createRedemptionUseCaseProvider)
        .execute(customerId: customerId, rewardId: rewardId);

    // After successful redemption, refresh the customer data
    await refresh();
    return result;
  }

  /// If you need a manual refresh:
  // Future<void> refresh() => ref.invalidate(customerControllerProvider);
  Future<void> refresh() async => ref.invalidateSelf();
}
