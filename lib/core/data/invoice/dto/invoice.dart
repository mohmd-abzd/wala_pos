/// Expects gateway JSON like:
/// { "invoiceId": "...", "createdAt": "2024-12-22T10:00:00.000Z", "amount": 12.5 }
class Invoice {
  final String invoiceId;
  final DateTime createdAt;
  final double amount;

  Invoice({
    required this.invoiceId,
    required this.createdAt,
    required this.amount,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) {
    final id = json['invoiceId']?.toString() ?? '';

    DateTime parseDate(dynamic value) {
      if (value == null) return DateTime.fromMillisecondsSinceEpoch(0);
      try {
        return DateTime.parse(value.toString());
      } catch (_) {
        return DateTime.fromMillisecondsSinceEpoch(0);
      }
    }

    double parseAmount(dynamic value) {
      if (value == null) return 0.0;
      if (value is num) return value.toDouble();
      final s = value.toString();
      return double.tryParse(s) ?? 0.0;
    }

    return Invoice(
      invoiceId: id,
      createdAt: parseDate(json['createdAt']),
      amount: parseAmount(json['amount']),
    );
  }

  Map<String, dynamic> toJson() => {
    'invoiceId': invoiceId,
    'createdAt': createdAt.toUtc().toIso8601String(),
    'amount': amount.toStringAsFixed(
      amount.truncateToDouble() == amount ? 0 : 2,
    ),
  };
}
