import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:walaa_pos/features/register_customer/presentation/controller/register_customer_controller.dart';
import 'package:walaa_pos/features/register_customer/presentation/ui/widget/register_customer_form.dart';
import '/common/extension/string_hardcoded.dart';

class RegisterCustomerScreen extends ConsumerStatefulWidget {
  const RegisterCustomerScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RegisterCustomerScreenState();
}

class _RegisterCustomerScreenState
    extends ConsumerState<RegisterCustomerScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(registrationControllerProvider);

    return Scaffold(
      appBar: AppBar(title: Text('تسجيل الزبون'.hardcoded)),
      body: ModalProgressHUD(
        inAsyncCall: controller.isLoading,
        child: const RegisterCustomerForm(),
      ),
    );
  }
}
