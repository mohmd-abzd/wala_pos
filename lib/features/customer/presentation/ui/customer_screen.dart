import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:wala_pos/core/route/route_name.dart';
import 'package:wala_pos/features/customer/presentation/controller/customer_controller.dart';
import 'package:wala_pos/features/customer/presentation/ui/customer_card_widget.dart';
import 'package:wala_pos/features/purchase_session/presentation/ui/purchase_screen_session.dart';
import 'package:wala_pos/features/rewards_list/presentation/ui/rewards_list_screen.dart';

class CustomerScreen extends ConsumerWidget {
  const CustomerScreen({super.key, required this.vcid});
  final String vcid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(customerControllerProvider(vcid));

    // Listen for success messages
    ref.listen(
      customerControllerProvider(vcid).select((s) => s.successMessage),
      (_, msg) async {
        if (msg != null) {
          await showDialog(
            context: context,
            barrierDismissible: true,
            builder: (_) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              title: const Text(
                '🎉 تمت عملية الاستبدال بنجاح!',
                textAlign: TextAlign.center,
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.card_giftcard, color: Colors.deepPurple, size: 64),
                  const SizedBox(height: 12),
                  Text(
                    msg,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
              actions: [
                Center(
                  child: FilledButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('تم'),
                  ),
                ),
              ],
            ),
          );

          ref.read(customerControllerProvider(vcid).notifier).refresh();
        }
      },
    );

    final isBusy = state.isLoading;
    final hasError = state.error != null;

    return Scaffold(
      appBar: AppBar(title: const Text('حساب الزبون')),
      body: ModalProgressHUD(
        inAsyncCall: isBusy,
        child: Builder(
          builder: (context) {
            if (hasError) {
              return Center(
                child: Text(
                  state.error!,
                  style: const TextStyle(color: Colors.red, fontSize: 32),
                ),
              );
            }

            final c = state.customer;

            return LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: CustomerCardWidget(
                        merchantName: c.merchantName,
                        cardNumber: c.cardNumber,
                        points: c.totalPoints,
                        name: c.name,
                        lastTransaction: c.lastTransaction,
                      ),
                    ),

                    /// ✅ Direct navigation to Purchase Session
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 200,
                          child: FilledButton.icon(
                            icon: const Icon(Icons.shopping_cart_checkout),
                            label: const Text('ادخال يدوي'),
                            onPressed: () async {
                              final changed = await context.pushNamed<bool>(
                                purchaseRoute,
                                pathParameters: {
                                  'vcid': vcid,
                                  'customerId': c.id.toString(),
                                },
                              );

                              if (changed == true) {
                                ref
                                    .read(
                                      customerControllerProvider(vcid).notifier,
                                    )
                                    .refresh();
                              }
                            },
                          ),
                        ),

                        /// ✅ Direct navigation to Purchase Session
                        SizedBox(
                          width: 200,
                          child: FilledButton.icon(
                            icon: const Icon(Icons.shopping_cart_checkout),
                            label: const Text('مكافآت'),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => RewardsListScreen(
                                    c: state.customer,
                                    vcid: vcid,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: PurchaseSessionScreen(
                        vcid: vcid,
                        customerId: c.id,
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
