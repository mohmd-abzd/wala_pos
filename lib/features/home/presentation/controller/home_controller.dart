import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:walaa_pos/common/util/run_guarded.dart';
import 'package:walaa_pos/features/home/domain/get_profile_usecase.dart';
import 'package:walaa_pos/features/home/domain/logout_usecase.dart';
import 'package:walaa_pos/features/home/presentation/state/home_state.dart';

final homeControllerProvider = NotifierProvider<HomeController, HomeState>(
  HomeController.new,
);

class HomeController extends Notifier<HomeState> {
  late final GetProfileUseCase _getProfile;

  @override
  HomeState build() {
    _getProfile = ref.read(getProfileUseCaseProvider);
    Future.microtask(loadHome);
    return HomeState.initial();
  }

  Future<void> loadHome() async {
    state = state.copyWith(isLoading: true);
    final profile = await runGuarded(
      () => _getProfile.execute(),
      (msg) => state = state.copyWith(isLoading: false, error: msg),
    );

    if (profile != null) {
      state = state.copyWith(isLoading: false, profile: profile);
    } else {
      state = state.copyWith(isLoading: false, error: 'No Profile found');
    }
  }

  Future<void> logout() async {
    final logoutUseCase = ref.read(logoutUseCaseProvider);
    await logoutUseCase.execute();
  }
}
