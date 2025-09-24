// lib/features/transactions/presentation/ui/refund_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/features/refund/presentation/controller/transactions_controller.dart';

class RefundScreen extends ConsumerWidget {
  final String vcid;
  final int customerId;
  const RefundScreen({super.key, required this.vcid, required this.customerId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(transactionsControllerProvider(customerId));

    return Scaffold(
      appBar: AppBar(title: const Text("Refund Transactions")),
      body: NotificationListener<ScrollNotification>(
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
        child: ListView.builder(
          itemCount: state.transactions.length,
          itemBuilder: (context, i) {
            final tx = state.transactions[i];
            return ListTile(
              title: Text("Code: ${tx.transactionCode} - \$${tx.amount}"),
              subtitle: Text("Points: ${tx.points} - ${tx.transactionTime}"),
              trailing: IconButton(
                icon: const Icon(Icons.undo, color: Colors.red),
                onPressed: () async {
                  final action = await showDialog<bool>(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text("Refund"),
                      content: Text(
                        "Do you want to refund transaction ${tx.transactionCode}?",
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(ctx).pop(false),
                          child: const Text("Cancel"),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.of(ctx).pop(true),
                          child: const Text("Refund"),
                        ),
                      ],
                    ),
                  );

                  if (action == true) {
                    await ref
                        .read(
                          transactionsControllerProvider(customerId).notifier,
                        )
                        .refund(tx.id);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Refund successful")),
                    );
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
