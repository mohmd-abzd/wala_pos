import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_card.freezed.dart';
part 'customer_card.g.dart';

@freezed
class CustomerCard with _$CustomerCard {
  factory CustomerCard({
    required int id,
    required String name,
    required String phoneNumber,
    required String email,
    required int totalPoints,
    required String cardNumber,
    required String merchantName,
    required DateTime? lastTransaction,
  }) = _CustomerCard;

  factory CustomerCard.fromJson(Map<String, dynamic> json) =>
      _$CustomerCardFromJson(json);
}
