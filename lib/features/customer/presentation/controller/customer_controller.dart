import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/features/customer/domain/get_customer_usecase.dart';
import 'package:walaa_pos/features/customer/presentation/state/customer_state.dart';

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

  /// If you need a manual refresh:
  // Future<void> refresh() => ref.invalidate(customerControllerProvider);
  Future<void> refresh() async => ref.invalidateSelf();
}
