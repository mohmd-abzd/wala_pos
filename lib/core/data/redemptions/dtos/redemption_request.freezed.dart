// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redemption_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RedemptionRequest _$RedemptionRequestFromJson(Map<String, dynamic> json) {
  return _RedemptionRequest.fromJson(json);
}

/// @nodoc
mixin _$RedemptionRequest {
  int get customerId => throw _privateConstructorUsedError;
  int get rewardId => throw _privateConstructorUsedError;

  /// Serializes this RedemptionRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RedemptionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RedemptionRequestCopyWith<RedemptionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedemptionRequestCopyWith<$Res> {
  factory $RedemptionRequestCopyWith(
    RedemptionRequest value,
    $Res Function(RedemptionRequest) then,
  ) = _$RedemptionRequestCopyWithImpl<$Res, RedemptionRequest>;
  @useResult
  $Res call({int customerId, int rewardId});
}

/// @nodoc
class _$RedemptionRequestCopyWithImpl<$Res, $Val extends RedemptionRequest>
    implements $RedemptionRequestCopyWith<$Res> {
  _$RedemptionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RedemptionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? customerId = null, Object? rewardId = null}) {
    return _then(
      _value.copyWith(
            customerId: null == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                      as int,
            rewardId: null == rewardId
                ? _value.rewardId
                : rewardId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RedemptionRequestImplCopyWith<$Res>
    implements $RedemptionRequestCopyWith<$Res> {
  factory _$$RedemptionRequestImplCopyWith(
    _$RedemptionRequestImpl value,
    $Res Function(_$RedemptionRequestImpl) then,
  ) = __$$RedemptionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int customerId, int rewardId});
}

/// @nodoc
class __$$RedemptionRequestImplCopyWithImpl<$Res>
    extends _$RedemptionRequestCopyWithImpl<$Res, _$RedemptionRequestImpl>
    implements _$$RedemptionRequestImplCopyWith<$Res> {
  __$$RedemptionRequestImplCopyWithImpl(
    _$RedemptionRequestImpl _value,
    $Res Function(_$RedemptionRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RedemptionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? customerId = null, Object? rewardId = null}) {
    return _then(
      _$RedemptionRequestImpl(
        customerId: null == customerId
            ? _value.customerId
            : customerId // ignore: cast_nullable_to_non_nullable
                  as int,
        rewardId: null == rewardId
            ? _value.rewardId
            : rewardId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RedemptionRequestImpl implements _RedemptionRequest {
  const _$RedemptionRequestImpl({
    required this.customerId,
    required this.rewardId,
  });

  factory _$RedemptionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedemptionRequestImplFromJson(json);

  @override
  final int customerId;
  @override
  final int rewardId;

  @override
  String toString() {
    return 'RedemptionRequest(customerId: $customerId, rewardId: $rewardId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedemptionRequestImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.rewardId, rewardId) ||
                other.rewardId == rewardId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerId, rewardId);

  /// Create a copy of RedemptionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedemptionRequestImplCopyWith<_$RedemptionRequestImpl> get copyWith =>
      __$$RedemptionRequestImplCopyWithImpl<_$RedemptionRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RedemptionRequestImplToJson(this);
  }
}

abstract class _RedemptionRequest implements RedemptionRequest {
  const factory _RedemptionRequest({
    required final int customerId,
    required final int rewardId,
  }) = _$RedemptionRequestImpl;

  factory _RedemptionRequest.fromJson(Map<String, dynamic> json) =
      _$RedemptionRequestImpl.fromJson;

  @override
  int get customerId;
  @override
  int get rewardId;

  /// Create a copy of RedemptionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedemptionRequestImplCopyWith<_$RedemptionRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
