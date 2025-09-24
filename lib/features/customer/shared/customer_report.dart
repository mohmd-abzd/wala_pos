// lib/features/customer/domain/customer_report.dart
import 'package:walaa_pos/features/customer/shared/customer_card.dart';
import 'package:walaa_pos/features/customer/shared/reward_item.dart';

/// Combines the two domain models into one object for your screen.
class CustomerReport {
  final CustomerCard customer;
  final List<RewardItem> rewards;

  CustomerReport({required this.customer, required this.rewards});
}
