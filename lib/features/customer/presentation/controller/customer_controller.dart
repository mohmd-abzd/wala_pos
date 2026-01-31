import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wala_pos/common/util/run_guarded.dart';
import 'package:wala_pos/features/customer/domain/redemption_usecase.dart';
import 'package:wala_pos/features/shared/customer_info.dart';
import 'package:wala_pos/features/customer/domain/get_customer_usecase.dart';
import 'package:wala_pos/features/customer/presentation/state/customer_state.dart';

final customerControllerProvider =
    AutoDisposeNotifierProviderFamily<
      CustomerController,
      CustomerState,
      String
    >(CustomerController.new);

class CustomerController
    extends AutoDisposeFamilyNotifier<CustomerState, String> {
  @override
  CustomerState build(String vcid) {
    // Load customer after provider initializes
    Future.microtask(() => _loadCustomer(vcid));

    // initial state (no UI yet)
    return CustomerState(
      isLoading: true,
      customer: CustomerInfo(
        id: 0,
        name: '',
        email: '',
        phoneNumber: '',
        totalPoints: 0,
        cardNumber: '',
        merchantName: '',
        lastTransaction: DateTime.now(),
      ),
    );
  }

  Future<void> _loadCustomer(String vcid) async {
    final customerInfo = await runGuarded(
      () => ref.read(getCustomerUseCaseProvider).execute(vcid),
      (msg) => state = state.copyWith(isLoading: false, error: msg),
    );

    if (customerInfo != null) {
      state = state.copyWith(
        isLoading: false,
        customer: customerInfo,
        error: null,
      );
    }
  }

  Future<void> redeemReward({required int rewardId}) async {
    final prev = state;
    state = prev.copyWith(isLoading: true, error: null, successMessage: null);

    final result = await runGuarded(
      () => ref
          .read(createRedemptionUseCaseProvider)
          .execute(customerId: prev.customer.id, rewardId: rewardId),
      (msg) => state = prev.copyWith(isLoading: false, error: msg),
    );

    if (result != null) {
      state = state.copyWith(isLoading: false, successMessage: result.message);
      // Refresh customer points and rewards
      await _loadCustomer(arg);
    }
  }

  Future<void> refresh() async => _loadCustomer(arg);
}
