// purchase_session_screen.dart
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class PurchaseSessionScreen extends StatefulWidget {
  const PurchaseSessionScreen({
    super.key,
    required this.vcid,
    required this.customerId,
  });

  final String vcid;
  final int customerId;

  @override
  State<PurchaseSessionScreen> createState() => _PurchaseSessionScreenState();
}

class _PurchaseSessionScreenState extends State<PurchaseSessionScreen> {
  final List<_Invoice> _invoices = <_Invoice>[];
  final Random _rng = Random();
  Timer? _timer;
  bool _active = true;

  @override
  void initState() {
    super.initState();
    _scheduleNext();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  // Random delay 3–7 seconds
  Duration _nextDelay() => Duration(seconds: 3 + _rng.nextInt(5));

  String _rndInvoiceId() => 'فاتورة-${10000 + _rng.nextInt(90000)}';

  double _rndAmount() => double.parse(
    (5 + _rng.nextInt(200) + _rng.nextDouble()).toStringAsFixed(2),
  );

  void _scheduleNext() {
    _timer?.cancel();
    if (!_active) return;

    _timer = Timer(_nextDelay(), () {
      if (!mounted || !_active) return;

      final inv = _Invoice(
        id: _rndInvoiceId(),
        amount: _rndAmount(),
        closedAt: DateTime.now(),
      );

      setState(() {
        // Newest invoices on top
        _invoices.insert(0, inv);
      });

      // Keep session running
      _scheduleNext();
    });
  }

  Future<void> _onInvoiceTap(_Invoice inv) async {
    // Show confirmation modal when the cashier taps an invoice
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
                      Text('رقم الفاتورة: ${inv.id}'),
                      const SizedBox(height: 6),
                      Text(
                        'المبلغ: ${inv.amount.toStringAsFixed(2)} د.ل',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Theme.of(ctx).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'الوقت: ${TimeOfDay.fromDateTime(inv.closedAt).format(ctx)}',
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

  void _completeWith(_Invoice inv) {
    // Close the session (no more new invoices)
    _active = false;
    _timer?.cancel();

    // Result to pass back if you want to use it
    final result = {
      'changed': true,
      'invoiceId': inv.id,
      'amount': inv.amount,
      'vcid': widget.vcid,
      'customerId': widget.customerId,
    };

    if (!mounted) return;

    // Success toast/snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'تم تأكيد عملية ولاء للفاتورة ${inv.id} بمبلغ ${inv.amount.toStringAsFixed(2)} د.ل',
        ),
      ),
    );

    // Pop screen after short delay
    Future.delayed(const Duration(milliseconds: 350), () {
      if (mounted) Navigator.of(context).pop(true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('جلسة ولاء – تدفق فواتير'),
        actions: [
          IconButton(
            tooltip: _active ? 'إيقاف الجلسة' : 'استئناف الجلسة',
            onPressed: () {
              setState(() => _active = !_active);
              if (_active) {
                _scheduleNext();
              } else {
                _timer?.cancel();
              }
            },
            icon: Icon(
              _active ? Icons.pause_circle_filled : Icons.play_circle_fill,
            ),
          ),
        ],
      ),
      body: _invoices.isEmpty
          ? const _EmptyState()
          : ListView.separated(
              padding: const EdgeInsets.all(12),
              itemCount: _invoices.length,
              separatorBuilder: (_, __) => const SizedBox(height: 8),
              itemBuilder: (_, i) {
                final inv = _invoices[i];
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
                                  'رقم الفاتورة: ${inv.id}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  'المبلغ: ${inv.amount.toStringAsFixed(2)} د.ل',
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
                                  'الوقت: ${TimeOfDay.fromDateTime(inv.closedAt).format(context)}',
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

class _Invoice {
  final String id;
  final double amount;
  final DateTime closedAt;

  _Invoice({required this.id, required this.amount, required this.closedAt});
}
