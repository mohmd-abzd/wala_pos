// features/purchase/presentation/ui/purchase_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/features/customer/presentation/controller/customer_controller.dart';
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

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController();
  }

  @override
  void dispose() {
    _amountController.dispose();
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
          final local = context;
          final snack = ScaffoldMessenger.of(local).showSnackBar(
            SnackBar(content: Text(msg), duration: const Duration(seconds: 2)),
          );
          await snack.closed;
          if (!local.mounted) return;
          ref.invalidate(customerControllerProvider(widget.vcid));

          Navigator.of(local).pop(); // back to customer screen
        }
      },
    );

    return Scaffold(
      appBar: AppBar(title: const Text('عملية شراء')),
      body: Padding(
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
                      if (v == null || v.trim().isEmpty)
                        return 'الرجاء إدخال المبلغ';
                      final parsed = double.tryParse(v.replaceAll(',', '.'));
                      if (parsed == null || parsed <= 0)
                        return 'المبلغ غير صالح';
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  if (state.error != null) ...[
                    Text(
                      state.error!,
                      style: const TextStyle(color: Colors.red),
                    ),
                    const SizedBox(height: 8),
                  ],
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
                              ctrl.submit(amount: amount);
                            },
                      icon: state.isLoading
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.check),
                      label: const Text('تأكيد الشراء'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
