import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:walaa_pos/core/data/auth/dto/response/login_response.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    Profile? profile,
    String? error,
  }) = _HomeState;

  factory HomeState.initial() =>
      const HomeState(isLoading: false, profile: null, error: null);
}
