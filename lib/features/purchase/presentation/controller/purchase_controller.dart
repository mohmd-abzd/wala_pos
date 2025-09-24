// features/purchase/presentation/controller/purchase_controller.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/features/purchase/domain/purchase_usecase.dart';
import '../../presentation/state/purchase_state.dart';

final purchaseControllerProvider =
    AutoDisposeNotifierProviderFamily<PurchaseController, PurchaseState, int>(
      PurchaseController.new,
    );

class PurchaseController extends AutoDisposeFamilyNotifier<PurchaseState, int> {
  late final int _customerId;

  @override
  PurchaseState build(int customerId) {
    _customerId = customerId;
    return PurchaseState();
  }

  Future<void> submit({required double amount}) async {
    state = state.copyWith(isLoading: true, error: null, successMessage: null);
    try {
      final result = await ref
          .read(createPurchaseUseCaseProvider)
          .execute(customerId: _customerId, amount: amount);

      state = state.copyWith(
        isLoading: false,
        successMessage: result.message ?? 'تم تسجيل عملية الشراء بنجاح',
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: 'تعذر إتمام العملية. حاول مرة أخرى.',
      );
    }
  }
}
