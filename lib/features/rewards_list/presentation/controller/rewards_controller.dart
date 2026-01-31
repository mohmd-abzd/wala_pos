import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wala_pos/common/util/run_guarded.dart';
import '../state/rewards_list_state.dart';
import '../../domain/get_rewards_usecase.dart';

final rewardsControllerProvider =
    AutoDisposeNotifierProvider<RewardsController, RewardsListState>(
      RewardsController.new,
    );

class RewardsController extends AutoDisposeNotifier<RewardsListState> {
  @override
  RewardsListState build() {
    // trigger loading after initialization
    Future.microtask(() => _load());

    return RewardsListState(isLoading: true);
  }

  Future<void> _load() async {
    final prev = state;

    final list = await runGuarded(
      () => ref.read(getRewardsUseCaseProvider).execute(),
      (msg) => state = prev.copyWith(isLoading: false, error: msg),
    );

    if (list != null) {
      state = prev.copyWith(isLoading: false, rewards: list, error: null);
    }
  }

  Future<void> refresh() async => _load();
}
