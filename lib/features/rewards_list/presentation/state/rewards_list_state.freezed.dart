// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rewards_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RewardsListState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<RewardItem> get rewards => throw _privateConstructorUsedError;

  /// Create a copy of RewardsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardsListStateCopyWith<RewardsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardsListStateCopyWith<$Res> {
  factory $RewardsListStateCopyWith(
    RewardsListState value,
    $Res Function(RewardsListState) then,
  ) = _$RewardsListStateCopyWithImpl<$Res, RewardsListState>;
  @useResult
  $Res call({bool isLoading, String? error, List<RewardItem> rewards});
}

/// @nodoc
class _$RewardsListStateCopyWithImpl<$Res, $Val extends RewardsListState>
    implements $RewardsListStateCopyWith<$Res> {
  _$RewardsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? rewards = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            rewards: null == rewards
                ? _value.rewards
                : rewards // ignore: cast_nullable_to_non_nullable
                      as List<RewardItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RewardsListStateImplCopyWith<$Res>
    implements $RewardsListStateCopyWith<$Res> {
  factory _$$RewardsListStateImplCopyWith(
    _$RewardsListStateImpl value,
    $Res Function(_$RewardsListStateImpl) then,
  ) = __$$RewardsListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String? error, List<RewardItem> rewards});
}

/// @nodoc
class __$$RewardsListStateImplCopyWithImpl<$Res>
    extends _$RewardsListStateCopyWithImpl<$Res, _$RewardsListStateImpl>
    implements _$$RewardsListStateImplCopyWith<$Res> {
  __$$RewardsListStateImplCopyWithImpl(
    _$RewardsListStateImpl _value,
    $Res Function(_$RewardsListStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RewardsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? rewards = null,
  }) {
    return _then(
      _$RewardsListStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        rewards: null == rewards
            ? _value._rewards
            : rewards // ignore: cast_nullable_to_non_nullable
                  as List<RewardItem>,
      ),
    );
  }
}

/// @nodoc

class _$RewardsListStateImpl implements _RewardsListState {
  _$RewardsListStateImpl({
    this.isLoading = false,
    this.error,
    final List<RewardItem> rewards = const <RewardItem>[],
  }) : _rewards = rewards;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  final List<RewardItem> _rewards;
  @override
  @JsonKey()
  List<RewardItem> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  String toString() {
    return 'RewardsListState(isLoading: $isLoading, error: $error, rewards: $rewards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardsListStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    error,
    const DeepCollectionEquality().hash(_rewards),
  );

  /// Create a copy of RewardsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardsListStateImplCopyWith<_$RewardsListStateImpl> get copyWith =>
      __$$RewardsListStateImplCopyWithImpl<_$RewardsListStateImpl>(
        this,
        _$identity,
      );
}

abstract class _RewardsListState implements RewardsListState {
  factory _RewardsListState({
    final bool isLoading,
    final String? error,
    final List<RewardItem> rewards,
  }) = _$RewardsListStateImpl;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  List<RewardItem> get rewards;

  /// Create a copy of RewardsListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardsListStateImplCopyWith<_$RewardsListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
