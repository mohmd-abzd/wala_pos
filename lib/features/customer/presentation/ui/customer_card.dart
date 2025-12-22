import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard({
    super.key,
    required this.name,
    required this.cardNumber,
    required this.merchantName,
    required this.points,
    required this.lastTransaction,
  });

  final String cardNumber;
  final String merchantName;
  final DateTime? lastTransaction;

  final int points;
  final String name;

  @override
  Widget build(BuildContext context) {
    final topTextStyle = Theme.of(context).textTheme.titleSmall?.copyWith(
      color: Colors.white,
      fontWeight: FontWeight.w200,
    );

    final bottomTextStyle = Theme.of(context).textTheme.bodySmall?.copyWith(
      color: Colors.white,
      fontWeight: FontWeight.w200,
    );

    return Directionality(
      textDirection: TextDirection.rtl, // Arabic layout
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: AspectRatio(
          aspectRatio: 2.3, // similar proportions to your image
          child: Column(
            children: [
              // Top black area
              Expanded(
                child: Container(
                  color: const Color(0xFF222222),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Logos row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // // Espresso Lab logo
                          SvgPicture.asset(
                            'assets/images/bitmap.svg',
                            colorFilter: ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                            width: 28,
                            height: 28,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text('رقم البطاقة: $cardNumber', style: topTextStyle),
                      const SizedBox(height: 8),
                      Text('الاسم : $name', style: topTextStyle),
                      const Spacer(),
                    ],
                  ),
                ),
              ),

              // Bottom red bar
              Container(
                color: const Color(0xFFC62828),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    Text(
                      '$points نقطة',
                      style: bottomTextStyle?.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),

                    Text(formatLastVisit(), style: bottomTextStyle),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String formatLastVisit() {
    final last = lastTransaction;

    if (last == null) {
      return 'أول زيارة';
    }

    final now = DateTime.now();
    final diff = now.difference(last);

    if (diff.inMinutes < 1) {
      return 'الآن';
    } else if (diff.inMinutes < 60) {
      return 'اخر زيارة قبل ${diff.inMinutes} دقيقة';
    } else if (diff.inHours < 24) {
      return 'اخر زيارة قبل ${diff.inHours} ساعة';
    } else if (diff.inDays < 30) {
      return "اخر زيارة قبل ${diff.inDays} يوم";
    } else if (diff.inDays < 365) {
      final months = (diff.inDays / 30).floor();
      return 'اخر زيارة قبل $months شهر';
    } else {
      final years = (diff.inDays / 365).floor();
      return 'اخر زيارة قبل $years سنة';
    }
  }
}
