import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/core/route/route_name.dart';
import 'package:walaa_pos/features/customer/presentation/controller/customer_controller.dart';
import 'package:go_router/go_router.dart';

final _rewardImages = [
  'https://picsum.photos/300/300', // coffee
  'https://picsum.photos/300/300', // croissant
  'https://picsum.photos/300/300', // sandwich
  'https://images.unsplash.com/photo-1578985545062-69928b1d9587', // cake
];
final _random = Random();

class CustomerScreen extends ConsumerWidget {
  const CustomerScreen({super.key, required this.vcid});
  final String vcid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateAsync = ref.watch(customerControllerProvider(vcid));

    return Scaffold(
      appBar: AppBar(title: const Text('حساب الزبون')),
      body: stateAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, s) => Center(child: Text(e.toString())),
        data: (state) {
          final c = state.customer;

          Widget customerSidebar = Card(
            margin: const EdgeInsets.all(16),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 36,
                        backgroundColor: Colors.blueGrey.shade100,
                        child: Text(
                          ((c.name.isNotEmpty ? c.name[0] : '?')).toUpperCase(),
                          style: const TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              c.name,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              c.email,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text(
                              c.phoneNumber,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Chip(
                      label: Text('${c.totalPoints} نقطة'),
                      avatar: const Icon(Icons.stars, size: 18),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                  const Divider(height: 24),
                  // Actions
                  FilledButton.icon(
                    onPressed: () {
                      context.pushNamed(
                        purchaseRoute,
                        pathParameters: {
                          'vcid': vcid,
                          'customerId': c.id.toString(),
                        },
                      );
                    },
                    icon: const Icon(Icons.shopping_bag),
                    label: const Text('عملية شراء'),
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton.icon(
                    onPressed: () {
                      context.pushNamed(
                        refundRoute,
                        pathParameters: {
                          'vcid': vcid,
                          'customerId': c.id.toString(),
                        },
                      );
                    },
                    icon: const Icon(Icons.undo),
                    label: const Text('عملية استرجاع'),
                  ),
                ],
              ),
            ),
          );

          Widget rewardsList = ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: state.rewards.length,
            itemBuilder: (ctx, i) {
              final r = state.rewards[i];
              final hasEnoughPoints = c.totalPoints >= r.pointsRequired;
              final progress = (c.totalPoints / r.pointsRequired).clamp(
                0.0,
                1.0,
              );
              final imageUrl =
                  _rewardImages[_random.nextInt(_rewardImages.length)];

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
                    // Image
                    r.imageUrl != null
                        ? Image.network(
                            // r.imageUrl!,
                            imageUrl,
                            width: double.infinity,
                            height: 160,
                            fit: BoxFit.cover,
                          )
                        : Container(
                            width: double.infinity,
                            height: 160,
                            color: Colors.grey.shade200,
                            child: const Icon(Icons.card_giftcard, size: 60),
                          ),

                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Reward title
                          Text(
                            r.name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 8),

                          // Progress bar
                          LinearProgressIndicator(
                            value: progress,
                            minHeight: 6,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodyMedium, // base style
                                  children: [
                                    TextSpan(
                                      text:
                                          '${c.totalPoints}', // customer total points
                                      style: TextStyle(
                                        color: hasEnoughPoints
                                            ? Colors.deepPurple
                                            : Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),

                                    const TextSpan(text: ' / '), // separator
                                    TextSpan(
                                      text:
                                          '${r.pointsRequired}', // required points
                                      style: const TextStyle(
                                        color: Colors.black, // always black
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                                child: hasEnoughPoints
                                    ? InkWell(
                                        onTap: () {
                                          // TODO: handle redeem click
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
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
                                        'لم تصل لعدد النقاط المطلوب',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                        ),
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

          return LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth >= 900;
              if (isWide) {
                // Sidebar on the side
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(width: 340, child: customerSidebar),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(),
                      ),
                    ),
                  ],
                );
              } else {
                // Stack vertically on small screens
                return Column(
                  children: [
                    customerSidebar,
                    Expanded(child: rewardsList),
                  ],
                );
              }
            },
          );
        },
      ),
    );
  }
}
