// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CustomerState {
  CustomerCard get customer => throw _privateConstructorUsedError;
  List<RewardItem> get rewards => throw _privateConstructorUsedError;

  /// Create a copy of CustomerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerStateCopyWith<CustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
    CustomerState value,
    $Res Function(CustomerState) then,
  ) = _$CustomerStateCopyWithImpl<$Res, CustomerState>;
  @useResult
  $Res call({CustomerCard customer, List<RewardItem> rewards});

  $CustomerCardCopyWith<$Res> get customer;
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res, $Val extends CustomerState>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? customer = null, Object? rewards = null}) {
    return _then(
      _value.copyWith(
            customer: null == customer
                ? _value.customer
                : customer // ignore: cast_nullable_to_non_nullable
                      as CustomerCard,
            rewards: null == rewards
                ? _value.rewards
                : rewards // ignore: cast_nullable_to_non_nullable
                      as List<RewardItem>,
          )
          as $Val,
    );
  }

  /// Create a copy of CustomerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCardCopyWith<$Res> get customer {
    return $CustomerCardCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerStateImplCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$CustomerStateImplCopyWith(
    _$CustomerStateImpl value,
    $Res Function(_$CustomerStateImpl) then,
  ) = __$$CustomerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomerCard customer, List<RewardItem> rewards});

  @override
  $CustomerCardCopyWith<$Res> get customer;
}

/// @nodoc
class __$$CustomerStateImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$CustomerStateImpl>
    implements _$$CustomerStateImplCopyWith<$Res> {
  __$$CustomerStateImplCopyWithImpl(
    _$CustomerStateImpl _value,
    $Res Function(_$CustomerStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? customer = null, Object? rewards = null}) {
    return _then(
      _$CustomerStateImpl(
        customer: null == customer
            ? _value.customer
            : customer // ignore: cast_nullable_to_non_nullable
                  as CustomerCard,
        rewards: null == rewards
            ? _value._rewards
            : rewards // ignore: cast_nullable_to_non_nullable
                  as List<RewardItem>,
      ),
    );
  }
}

/// @nodoc

class _$CustomerStateImpl implements _CustomerState {
  _$CustomerStateImpl({
    required this.customer,
    required final List<RewardItem> rewards,
  }) : _rewards = rewards;

  @override
  final CustomerCard customer;
  final List<RewardItem> _rewards;
  @override
  List<RewardItem> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  String toString() {
    return 'CustomerState(customer: $customer, rewards: $rewards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerStateImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    customer,
    const DeepCollectionEquality().hash(_rewards),
  );

  /// Create a copy of CustomerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerStateImplCopyWith<_$CustomerStateImpl> get copyWith =>
      __$$CustomerStateImplCopyWithImpl<_$CustomerStateImpl>(this, _$identity);
}

abstract class _CustomerState implements CustomerState {
  factory _CustomerState({
    required final CustomerCard customer,
    required final List<RewardItem> rewards,
  }) = _$CustomerStateImpl;

  @override
  CustomerCard get customer;
  @override
  List<RewardItem> get rewards;

  /// Create a copy of CustomerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerStateImplCopyWith<_$CustomerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
