// features/purchase/presentation/ui/purchase_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:toastification/toastification.dart';
import '../../presentation/controller/purchase_controller.dart';

class PurchaseScreen extends ConsumerStatefulWidget {
  const PurchaseScreen({
    super.key,
    required this.vcid,
    required this.customerId,
  });
  final String vcid;
  final int customerId;

  @override
  ConsumerState<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends ConsumerState<PurchaseScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _amountController;
  late final TextEditingController _invoiceIdController;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController();
    _invoiceIdController = TextEditingController();
  }

  @override
  void dispose() {
    _amountController.dispose();
    _invoiceIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(purchaseControllerProvider(widget.customerId));
    final ctrl = ref.read(
      purchaseControllerProvider(widget.customerId).notifier,
    );

    ref.listen(
      purchaseControllerProvider(
        widget.customerId,
      ).select((s) => s.successMessage),
      (_, msg) async {
        if (msg != null) {
          final points = ref
              .read(purchaseControllerProvider(widget.customerId))
              .newTotalPoints;

          final local = context;

          toastification.show(
            context: local,
            title: Text("نجحت العملية"),
            description: Text(
              points == null ? msg : '$msg\nالنقاط الجديدة: $points',
            ),
            autoCloseDuration: const Duration(seconds: 4),
          );

          // ref.invalidate(customerControllerProvider(widget.vcid));
          final changed = ref
              .read(purchaseControllerProvider(widget.customerId))
              .changed;
          context.pop<bool>(changed); // send the flag up
        }
      },
    );
    ref.listen(
      purchaseControllerProvider(widget.customerId).select((s) => s.error),
      (_, error) {
        if (error != null) {
          toastification.show(
            context: context,
            type: ToastificationType.error, // 🔴 red style
            title: const Text("خطأ"),
            description: Text(error),
            autoCloseDuration: const Duration(seconds: 4),
          );
        }
      },
    );

    return Scaffold(
      appBar: AppBar(title: const Text('عملية شراء')),
      body: ModalProgressHUD(
        inAsyncCall: ref
            .watch(purchaseControllerProvider(widget.customerId))
            .isLoading,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 420),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'الزبون: ${widget.vcid}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(height: 12),
                    // New invoice id field
                    TextFormField(
                      controller: _invoiceIdController,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'رقم الفاتورة (اختياري)',
                        prefixIcon: Icon(Icons.receipt_long),
                        border: OutlineInputBorder(),
                        hintText: 'مثال: INV-12345',
                      ),
                      validator: (v) {
                        // optional field, no strict validation
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      controller: _amountController,
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      decoration: const InputDecoration(
                        labelText: 'المبلغ',
                        prefixIcon: Icon(Icons.payments),
                        border: OutlineInputBorder(),
                        hintText: 'مثال: 25.00',
                      ),
                      validator: (v) {
                        if (v == null || v.trim().isEmpty) {
                          return 'الرجاء إدخال المبلغ';
                        }
                        final parsed = double.tryParse(v.replaceAll(',', '.'));
                        if (parsed == null || parsed <= 0) {
                          return 'المبلغ غير صالح';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),

                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: state.isLoading
                            ? null
                            : () {
                                if (!_formKey.currentState!.validate()) return;
                                final amount = double.parse(
                                  _amountController.text.replaceAll(',', '.'),
                                );
                                final invoiceId = _invoiceIdController.text
                                    .trim();
                                ctrl.submit(
                                  amount: amount,
                                  invoiceId: invoiceId.isEmpty
                                      ? null
                                      : invoiceId,
                                );
                              },
                        label: const Text('تأكيد الشراء'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
