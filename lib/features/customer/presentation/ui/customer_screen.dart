import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:walaa_pos/core/route/route_name.dart';
import 'package:walaa_pos/features/customer/presentation/controller/customer_controller.dart';
import 'package:walaa_pos/features/customer/presentation/ui/customer_card.dart';
import 'package:walaa_pos/features/customer/presentation/ui/rewards_list.dart';

enum _PurchaseFlow { normal, session }

class CustomerScreen extends ConsumerWidget {
  const CustomerScreen({super.key, required this.vcid});
  final String vcid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(customerControllerProvider(vcid));

    // Listen for success messages (existing dialog)
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
            final rewards = state.rewards;

            // Rewards list
            final rewardsList = RewardsList(c: c, rewards: rewards, vcid: vcid);
            return LayoutBuilder(
              builder: (context, constraints) {
                final isWide = constraints.maxWidth >= 900;
                if (isWide) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(width: 340, child: const Text("Nothing here")),
                      Expanded(child: rewardsList),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: CustomerCard(
                          merchantName: c.merchantName,
                          cardNumber: c.cardNumber,
                          points: c.totalPoints,
                          name: c.name,
                          lastTransaction: c.lastTransaction,
                        ),
                      ),
                      FilledButton.icon(
                        icon: const Icon(Icons.shopping_cart_checkout),
                        label: const Text('شراء'),
                        onPressed: () async {
                          final flow = await showModalBottomSheet<_PurchaseFlow>(
                            context: context,
                            showDragHandle: true,
                            builder: (ctx) {
                              return SafeArea(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    16,
                                    8,
                                    16,
                                    16,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'اختر طريقة الشراء',
                                        style: Theme.of(
                                          ctx,
                                        ).textTheme.titleMedium,
                                      ),
                                      const SizedBox(height: 12),

                                      ListTile(
                                        leading: const Icon(Icons.edit_note),
                                        title: const Text('شراء عادي'),
                                        subtitle: const Text(
                                          'إدخال يدوي / شاشة الشراء المعتادة',
                                        ),
                                        onTap: () => Navigator.pop(
                                          ctx,
                                          _PurchaseFlow.normal,
                                        ),
                                      ),

                                      ListTile(
                                        leading: const Icon(Icons.timer),
                                        title: const Text('جلسة شراء'),
                                        subtitle: const Text(
                                          'تدفق فواتير — اختر فاتورة لتأكيد الولاء',
                                        ),
                                        onTap: () => Navigator.pop(
                                          ctx,
                                          _PurchaseFlow.session,
                                        ),
                                      ),

                                      const SizedBox(height: 8),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                          if (!context.mounted) return;

                          if (flow == null) return;

                          // Navigate and optionally refresh when returning
                          bool? changed;

                          if (flow == _PurchaseFlow.normal) {
                            changed = await context.pushNamed<bool>(
                              purchaseRoute,
                              pathParameters: {
                                'vcid': vcid,
                                'customerId': c.id.toString(),
                              },
                            );
                          } else {
                            changed = await context.pushNamed<bool>(
                              purchaseSessionRoute,
                              pathParameters: {
                                'vcid': vcid,
                                'customerId': c.id.toString(),
                              },
                            );
                          }

                          if (changed == true) {
                            // Refresh customer/rewards after purchase/session confirmation
                            ref
                                .read(customerControllerProvider(vcid).notifier)
                                .refresh();
                          }
                        },
                      ),
                      const SizedBox(height: 12),
                      Expanded(child: rewardsList),
                    ],
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
