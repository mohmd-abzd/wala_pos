import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_masked_formatter/multi_masked_formatter.dart';
import 'package:walaa_pos/core/route/route_name.dart';
import 'package:walaa_pos/features/register_customer/presentation/controller/register_customer_controller.dart';
import 'package:walaa_pos/features/register_customer/presentation/ui/widget/register_button.dart';
import '/common/extension/string_hardcoded.dart';
import '/common/style/dimens.dart';
import 'package:go_router/go_router.dart';

class RegisterCustomerForm extends ConsumerStatefulWidget {
  const RegisterCustomerForm({super.key});

  @override
  ConsumerState<RegisterCustomerForm> createState() =>
      _RegisterCustomerFormState();
}

class _RegisterCustomerFormState extends ConsumerState<RegisterCustomerForm> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _fullnameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _birthdateController;

  DateTime? _selectedBirthdate;

  bool? _gender; // null = غير محدد, true = ذكر, false = أنثى

  @override
  void initState() {
    super.initState();
    _fullnameController = TextEditingController(text: 'Mohammed Ali');
    _emailController = TextEditingController(text: 'mohammed.ali@gmail.com');
    _phoneNumberController = TextEditingController(text: '0914913166');
    _birthdateController = TextEditingController(text: '2000/05/15');
  }

  @override
  void dispose() {
    _fullnameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _birthdateController.dispose();

    super.dispose();
  }

  String _formatDate(DateTime d) {
    final y = d.year.toString().padLeft(4, '0');
    final m = d.month.toString().padLeft(2, '0');
    final day = d.day.toString().padLeft(2, '0');
    return '$y/$m/$day';
  }

  Future<void> _pickBirthdate() async {
    final now = DateTime.now();
    final tenYearsAgo = DateTime(now.year - 10, now.month, now.day);
    final firstDate = DateTime(now.year - 100); // max age ~100
    final initialDate = _selectedBirthdate ?? tenYearsAgo;

    final picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: tenYearsAgo,
      locale: const Locale('en'), // Arabic picker
      helpText: 'اختر تاريخ الميلاد',
      cancelText: 'إلغاء',
      confirmText: 'تم',
    );

    if (picked != null) {
      setState(() {
        _selectedBirthdate = picked;
        _birthdateController.text = _formatDate(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _listener();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _fullnameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'الاسم'.hardcoded,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(kSmall)),
                  ),
                  prefixIcon: const Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'الرجاء ادخال الاسم كاملا'.hardcoded;
                  }
                  final fullNameRegex = RegExp(
                    r'^[\p{L}]+(\s+[\p{L}]+)+$',
                    unicode: true,
                  );
                  if (!fullNameRegex.hasMatch(value.trim())) {
                    return 'الرجاء ادخال الاسم الكامل بشكل صحيح'.hardcoded;
                  }

                  return null;
                },
              ),
              const SizedBox(height: kLarge),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'البريد الالكتروني'.hardcoded,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(kSmall)),
                  ),
                  prefixIcon: const Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'الرجاء ادخال البريد الالكتروني'.hardcoded;
                  }
                  final emailRegex = RegExp(
                    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                  );
                  if (!emailRegex.hasMatch(value)) {
                    return 'الرجاء ادخال بريد الكتروني صالح'.hardcoded;
                  }

                  return null;
                },
              ),
              const SizedBox(height: kLarge),
              TextFormField(
                controller: _phoneNumberController,
                keyboardType: TextInputType.phone,
                maxLength: 10,

                decoration: InputDecoration(
                  labelText: 'رقم الهاتف'.hardcoded,
                  hintText: '0911234567',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(kSmall)),
                  ),
                  prefixIcon: const Icon(Icons.phone),
                  counterText: "",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'الرجاء ادخال رقم الهاتف'.hardcoded;
                  }
                  final phoneRegex = RegExp(r'^(091|092|093|094|095)\d{7}$');
                  if (!phoneRegex.hasMatch(value)) {
                    return 'الرجاء ادخال رقم هاتف صالح'.hardcoded;
                  }

                  return null;
                },
              ),
              const SizedBox(height: kLarge),
              TextFormField(
                controller: _birthdateController,
                readOnly: true,
                showCursor: false,
                // user taps field to open picker
                onTap: _pickBirthdate,
                decoration: InputDecoration(
                  labelText: 'تاريخ الميلاد'.hardcoded,
                  hintText: '2010/01/01',
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(kSmall)),
                  ),
                  prefixIcon: const Icon(Icons.calendar_month),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.edit_calendar),
                    onPressed: _pickBirthdate,
                  ),
                ),
                validator: _dateofbirthValidator,
              ),
              const SizedBox(height: kLarge),
              // الجنس
              DropdownButtonFormField<bool?>(
                value: _gender,
                decoration: InputDecoration(
                  labelText: 'الجنس'.hardcoded,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(kSmall)),
                  ),
                  prefixIcon: const Icon(Icons.wc),
                ),
                items: <DropdownMenuItem<bool?>>[
                  DropdownMenuItem<bool?>(
                    value: true,
                    child: Text('ذكر'.hardcoded),
                  ),
                  DropdownMenuItem<bool?>(
                    value: false,
                    child: Text('أنثى'.hardcoded),
                  ),
                ],
                onChanged: (val) => setState(() => _gender = val),
                validator: (val) =>
                    val == null ? 'الرجاء اختيار الجنس'.hardcoded : null,
              ),

              const SizedBox(height: kLarge),
              RegistrationButton(onPressed: _register),
              const SizedBox(height: kLarge),
              const SizedBox(height: kLarge),
            ],
          ),
        ),
      ),
    );
  }

  void _listener() {
    // listen for error
    ref.listen(registrationControllerProvider.select((value) => value.error), (
      _,
      next,
    ) {
      if (next != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 5),
            backgroundColor: Colors.red,
            content: Text(next),
          ),
        );
      }
    });
    // listen for success
    ref.listen(
      registrationControllerProvider.select(
        (value) => value.isRegisterCustomerSuccess,
      ),
      (_, success) {
        if (success == true) {
          // capture context and read state now
          final localContext = context; // snapshot of context at this moment
          final st = ref.read(registrationControllerProvider);
          final vcid = st.vcid;
          final msg = st.successMessage ?? 'تم التسجيل بنجاح';

          // show the SnackBar immediately
          final snackBarController = ScaffoldMessenger.of(localContext)
              .showSnackBar(
                SnackBar(
                  content: Text(msg),
                  duration: const Duration(seconds: 5),
                ),
              );

          // schedule navigation *after* the SnackBar closes
          snackBarController.closed.then((_) {
            // check mounted BEFORE using context again
            if (!localContext.mounted || vcid == null) return;

            // safe navigation
            localContext.pushReplacementNamed(
              customerRoute,
              pathParameters: {'vcid': vcid},
            );
          });

          // reset flag to avoid multiple firings
          ref.read(registrationControllerProvider.notifier).resetSuccess();
        }
      },
    );
  }

  void _register() {
    final isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      // (e.g. "0912345678" -> "218912345678")
      final reformattedNumber = _phoneNumberController.text.length > 1
          ? '218${_phoneNumberController.text.substring(1)}'
          : '';

      // collect form data from controllers

      final formData = {
        'name': _fullnameController.text,
        'email': _emailController.text,
        'phoneNumber': reformattedNumber,
        'birthdate': _birthdateController.text,
        'gender': _gender,
      };

      // // set form data
      ref.read(registrationControllerProvider.notifier).setFormData(formData);
      // // register Customer - call api
      ref.read(registrationControllerProvider.notifier).registerCustomer();
    }
  }

  String? _dateofbirthValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرجاء ادخال تاريخ الميلاد'.hardcoded;
    }

    // Match format YYYY/MM/DD
    final dobRegex = RegExp(r'^\d{4}/\d{2}/\d{2}$');
    if (!dobRegex.hasMatch(value)) {
      return 'الرجاء ادخال تاريخ الميلاد بشكل صحيح (YYYY/MM/DD)'.hardcoded;
    }

    // Parse the date safely
    try {
      final parts = value.split('/');
      final year = int.parse(parts[0]);
      final month = int.parse(parts[1]);
      final day = int.parse(parts[2]);

      final dob = DateTime(year, month, day);

      // If invalid date (like 2020/13/32), DateTime will adjust automatically,
      // so check components explicitly:
      if (dob.year != year || dob.month != month || dob.day != day) {
        return 'تاريخ الميلاد غير صالح'.hardcoded;
      }

      // Optional: age check (e.g., must be at least 10 years old)
      final now = DateTime.now();
      final age =
          now.year -
          dob.year -
          ((now.month < dob.month ||
                  (now.month == dob.month && now.day < dob.day))
              ? 1
              : 0);
      if (age < 10) {
        return 'العمر يجب ان يكون على الأقل 10 سنوات'.hardcoded;
      }
    } catch (_) {
      return 'تاريخ الميلاد غير صالح'.hardcoded;
    }

    return null;
  }
}
