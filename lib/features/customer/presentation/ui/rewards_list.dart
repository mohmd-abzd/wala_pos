import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wala_pos/core/provider/cache_manager_provider.dart';
import 'package:wala_pos/features/customer/presentation/controller/customer_controller.dart';
import 'package:wala_pos/features/customer/shared/customer_card.dart';
import 'package:wala_pos/features/customer/shared/reward_item.dart';

class RewardsList extends ConsumerWidget {
  final CustomerCard c;
  final List<RewardItem> rewards;
  final String vcid;

  const RewardsList({
    super.key,
    required this.c,
    required this.rewards,
    required this.vcid,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cacheManager = ref.watch(imageCacheManagerProvider);

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: rewards.length,
      itemBuilder: (ctx, i) {
        final r = rewards[i];
        final hasEnough = c.totalPoints >= r.pointsRequired;
        final progress = (c.totalPoints / r.pointsRequired).clamp(0.0, 1.0);

        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 3,
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              r.imageUrl != null
                  ? CachedNetworkImage(
                      imageUrl: r.imageUrl!,
                      cacheManager: cacheManager, // ✅ cache images
                      width: double.infinity,
                      height: 160,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      width: double.infinity,
                      height: 160,
                      color: Colors.grey.shade200,
                      child: const Icon(Icons.card_giftcard, size: 96),
                    ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      r.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: progress,
                      minHeight: 6,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${c.totalPoints} / ${r.pointsRequired}',
                          style: TextStyle(
                            color: hasEnough ? Colors.deepPurple : Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        hasEnough
                            ? InkWell(
                                onTap: () => _redeem(context, ref, r),
                                child: Row(
                                  children: const [
                                    Text(
                                      'بدل نقاطك بالمكافأة',
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.card_giftcard,
                                      size: 18,
                                      color: Colors.deepPurple,
                                    ),
                                  ],
                                ),
                              )
                            : const Text(
                                'لم تصل للنقاط المطلوبة',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _redeem(
    BuildContext context,
    WidgetRef ref,
    RewardItem r,
  ) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(
          r.name,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Divider(),
            const SizedBox(height: 12),
            Text(
              r.description ?? '',
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ],
        ),
        actionsAlignment: MainAxisAlignment.spaceBetween,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('إلغاء'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('تأكيد الاستبدال'),
          ),
        ],
      ),
    );

    if (confirm != true) return;

    await ref
        .read(customerControllerProvider(vcid).notifier)
        .redeemReward(rewardId: r.id);
  }
}
