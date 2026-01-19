import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:toastification/toastification.dart';
import 'package:walaa_pos/features/transactions/presentation/controller/transactions_controller.dart';

class TransactionsScreen extends ConsumerWidget {
  final int customerId;
  const TransactionsScreen({super.key, required this.customerId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(transactionsControllerProvider(customerId));
    final dateFormat = DateFormat('dd MMMM yyyy - hh:mm a', 'ar');
    final currency = NumberFormat.currency(locale: 'ar', symbol: 'د.ل');

    ref.listen(
      transactionsControllerProvider(
        customerId,
      ).select((s) => s.successMessage),
      (_, msg) {
        if (msg != null) {
          toastification.show(
            context: context,
            title: const Text("نجحت العملية"),
            description: Text(msg),
            autoCloseDuration: const Duration(seconds: 4),
          );
        }
      },
    );

    // ❌ error
    ref.listen(
      transactionsControllerProvider(customerId).select((s) => s.error),
      (_, err) {
        if (err != null) {
          toastification.show(
            context: context,
            type: ToastificationType.error,
            title: const Text("خطأ"),
            description: Text(err),
            autoCloseDuration: const Duration(seconds: 4),
          );
        }
      },
    );

    return PopScope<bool>(
      canPop: false, // intercept back so we can attach a result
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) {
          final changed = ref
              .read(transactionsControllerProvider(customerId))
              .changed;
          context.pop<bool>(changed); // send the flag up
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF7F8FA),
        appBar: AppBar(
          title: const Text("سجل المعاملات"),
          centerTitle: true,
          elevation: 0,
        ),
        body: ModalProgressHUD(
          inAsyncCall: state.isLoading,
          child: NotificationListener<ScrollNotification>(
            onNotification: (scroll) {
              if (scroll.metrics.pixels == scroll.metrics.maxScrollExtent &&
                  state.hasMore &&
                  !state.isLoading) {
                ref
                    .read(transactionsControllerProvider(customerId).notifier)
                    .loadMore();
              }
              return false;
            },
            child: state.transactions.isEmpty && !state.isLoading
                ? const Center(
                    child: Text(
                      "لا توجد معاملات حتى الآن",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: state.transactions.length,
                    itemBuilder: (context, i) {
                      final tx = state.transactions[i];
                      final isRefund = tx.isRefund == true;
                      final color = isRefund
                          ? Colors.red.shade50
                          : Colors.green.shade50;
                      final iconColor = isRefund
                          ? Colors.red.shade400
                          : Colors.green.shade400;
                      final txType = isRefund ? "عملية استرجاع" : "عملية شراء";

                      return Card(
                        color: color,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        margin: const EdgeInsets.only(bottom: 12),
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Header row
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: iconColor.withValues(
                                            alpha: 0.1,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                        padding: const EdgeInsets.all(8),
                                        child: Icon(
                                          isRefund
                                              ? Icons.undo_rounded
                                              : Icons.shopping_cart_outlined,
                                          color: iconColor,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        txType,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: iconColor,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    currency.format(tx.amount),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Divider(height: 1, color: Colors.grey.shade300),
                              const SizedBox(height: 8),

                              // Details
                              Row(
                                children: [
                                  const Icon(
                                    Icons.confirmation_number,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    "الرمز: ${tx.transactionCode}",
                                    style: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.access_time,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    dateFormat.format(
                                      DateTime.parse(tx.transactionTime),
                                    ),
                                    style: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.orange,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    "النقاط: ${tx.points}",
                                    style: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.store,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    "الفرع: ${tx.branch.name}",
                                    style: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),

                              // Refund button
                              if (!isRefund)
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: tx.isRefunded == true
                                        ? Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 6,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.red.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: const Text(
                                              "مسترجع",
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                          )
                                        : IconButton(
                                            style: TextButton.styleFrom(
                                              foregroundColor:
                                                  Colors.red.shade600,
                                            ),
                                            icon: const Icon(Icons.refresh),
                                            onPressed: () async {
                                              final confirm = await showDialog<bool>(
                                                context: context,
                                                builder: (ctx) => AlertDialog(
                                                  title: const Text(
                                                    "تأكيد الاسترجاع",
                                                  ),
                                                  content: Text(
                                                    "هل ترغب في استرجاع العملية ${tx.transactionCode}؟",
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.of(
                                                            ctx,
                                                          ).pop(false),
                                                      child: const Text(
                                                        "إلغاء",
                                                      ),
                                                    ),
                                                    ElevatedButton.icon(
                                                      onPressed: () =>
                                                          Navigator.of(
                                                            ctx,
                                                          ).pop(true),
                                                      icon: const Icon(
                                                        Icons.undo,
                                                      ),
                                                      label: const Text(
                                                        "تأكيد",
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );

                                              if (confirm == true) {
                                                await ref
                                                    .read(
                                                      transactionsControllerProvider(
                                                        customerId,
                                                      ).notifier,
                                                    )
                                                    .refund(tx.transactionCode);
                                              }
                                            },
                                          ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
