// purchase_session_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:walaa_pos/core/data/invoice/dto/invoice.dart';
import 'package:walaa_pos/features/purchase/presentation/controller/purchase_session_controller.dart'; // adjust path

class PurchaseSessionScreen extends ConsumerStatefulWidget {
  const PurchaseSessionScreen({
    super.key,
    required this.vcid,
    required this.customerId,
  });

  final String vcid;
  final int customerId;

  @override
  ConsumerState<PurchaseSessionScreen> createState() =>
      _PurchaseSessionScreenState();
}

class _PurchaseSessionScreenState extends ConsumerState<PurchaseSessionScreen> {
  bool _active = true;

  PurchaseSessionKey get _key =>
      PurchaseSessionKey(vcid: widget.vcid, customerId: widget.customerId);

  Future<void> _onInvoiceTap(Invoice inv) async {
    // --- adjust if DTO differs ---
    final id = inv.invoiceId;
    final amount = inv.amount;
    final closedAt = inv.createdAt;
    // ----------------------------

    final confirmed = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: false,
      showDragHandle: true,
      builder: (ctx) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.receipt_long, size: 40),
              const SizedBox(height: 8),
              Text(
                'تأكيد عملية ولاء لهذه الفاتورة؟',
                style: Theme.of(ctx).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Card(
                elevation: 2,
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('رقم الفاتورة: $id'),
                      const SizedBox(height: 6),
                      Text(
                        'المبلغ: ${amount.toStringAsFixed(2)} د.ل',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Theme.of(ctx).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'الوقت: ${TimeOfDay.fromDateTime(closedAt).format(ctx)}',
                        style: Theme.of(ctx).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  icon: const Icon(Icons.loyalty),
                  label: const Text('تأكيد ولاء'),
                  onPressed: () => Navigator.of(ctx).pop(true),
                ),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(false),
                child: const Text('إلغاء'),
              ),
            ],
          ),
        );
      },
    );

    if (confirmed == true) {
      _completeWith(inv);
    }
  }

  void _completeWith(Invoice inv) {
    // Close the session (no more new invoices)
    _active = false;
    ref.read(purchaseSessionControllerProvider(_key).notifier).pause();

    // --- adjust if DTO differs ---
    final id = inv.invoiceId;
    final amount = inv.amount;
    // ----------------------------

    final result = {
      'changed': true,
      'invoiceId': id,
      'amount': amount,
      'vcid': widget.vcid,
      'customerId': widget.customerId,
    };

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'تم تأكيد عملية ولاء للفاتورة $id بمبلغ ${amount.toStringAsFixed(2)} د.ل',
        ),
      ),
    );

    Future.delayed(const Duration(milliseconds: 350), () {
      if (mounted) Navigator.of(context).pop(true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final session = ref.watch(purchaseSessionControllerProvider(_key));
    final invoices = session.invoices;

    return Scaffold(
      appBar: AppBar(
        title: const Text('جلسة ولاء – تدفق فواتير'),
        actions: [
          IconButton(
            tooltip: _active ? 'إيقاف الجلسة' : 'استئناف الجلسة',
            onPressed: () {
              setState(() => _active = !_active);

              final ctrl = ref.read(
                purchaseSessionControllerProvider(_key).notifier,
              );

              if (_active) {
                ctrl.resume();
              } else {
                ctrl.pause();
              }
            },
            icon: Icon(
              _active ? Icons.pause_circle_filled : Icons.play_circle_fill,
            ),
          ),
        ],
      ),
      body: invoices.isEmpty
          ? const _EmptyState()
          : ListView.separated(
              padding: const EdgeInsets.all(12),
              itemCount: invoices.length,
              separatorBuilder: (_, __) => const SizedBox(height: 8),
              itemBuilder: (_, i) {
                final inv = invoices[i];

                // --- adjust if DTO differs ---
                final id = inv.invoiceId;
                final amount = inv.amount;
                final closedAt = inv.createdAt;
                // ----------------------------

                return InkWell(
                  onTap: () => _onInvoiceTap(inv),
                  child: Card(
                    elevation: 2,
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        children: [
                          const CircleAvatar(child: Icon(Icons.receipt)),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'رقم الفاتورة: $id',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  'المبلغ: ${amount.toStringAsFixed(2)} د.ل',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'الوقت: ${TimeOfDay.fromDateTime(closedAt).format(context)}',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                          const Icon(Icons.chevron_left),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.timer, size: 48),
            const SizedBox(height: 12),
            Text(
              'في انتظار الفواتير…\nستظهر الفواتير الجديدة تلقائيًا.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
