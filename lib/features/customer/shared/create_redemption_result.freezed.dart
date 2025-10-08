// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_redemption_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CreateRedemptionResult {
  String get redemptionCode => throw _privateConstructorUsedError;
  int get remainingPoints => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of CreateRedemptionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateRedemptionResultCopyWith<CreateRedemptionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRedemptionResultCopyWith<$Res> {
  factory $CreateRedemptionResultCopyWith(
    CreateRedemptionResult value,
    $Res Function(CreateRedemptionResult) then,
  ) = _$CreateRedemptionResultCopyWithImpl<$Res, CreateRedemptionResult>;
  @useResult
  $Res call({String redemptionCode, int remainingPoints, String? message});
}

/// @nodoc
class _$CreateRedemptionResultCopyWithImpl<
  $Res,
  $Val extends CreateRedemptionResult
>
    implements $CreateRedemptionResultCopyWith<$Res> {
  _$CreateRedemptionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateRedemptionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redemptionCode = null,
    Object? remainingPoints = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            redemptionCode: null == redemptionCode
                ? _value.redemptionCode
                : redemptionCode // ignore: cast_nullable_to_non_nullable
                      as String,
            remainingPoints: null == remainingPoints
                ? _value.remainingPoints
                : remainingPoints // ignore: cast_nullable_to_non_nullable
                      as int,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateRedemptionResultImplCopyWith<$Res>
    implements $CreateRedemptionResultCopyWith<$Res> {
  factory _$$CreateRedemptionResultImplCopyWith(
    _$CreateRedemptionResultImpl value,
    $Res Function(_$CreateRedemptionResultImpl) then,
  ) = __$$CreateRedemptionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String redemptionCode, int remainingPoints, String? message});
}

/// @nodoc
class __$$CreateRedemptionResultImplCopyWithImpl<$Res>
    extends
        _$CreateRedemptionResultCopyWithImpl<$Res, _$CreateRedemptionResultImpl>
    implements _$$CreateRedemptionResultImplCopyWith<$Res> {
  __$$CreateRedemptionResultImplCopyWithImpl(
    _$CreateRedemptionResultImpl _value,
    $Res Function(_$CreateRedemptionResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateRedemptionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redemptionCode = null,
    Object? remainingPoints = null,
    Object? message = freezed,
  }) {
    return _then(
      _$CreateRedemptionResultImpl(
        redemptionCode: null == redemptionCode
            ? _value.redemptionCode
            : redemptionCode // ignore: cast_nullable_to_non_nullable
                  as String,
        remainingPoints: null == remainingPoints
            ? _value.remainingPoints
            : remainingPoints // ignore: cast_nullable_to_non_nullable
                  as int,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$CreateRedemptionResultImpl implements _CreateRedemptionResult {
  const _$CreateRedemptionResultImpl({
    required this.redemptionCode,
    required this.remainingPoints,
    this.message,
  });

  @override
  final String redemptionCode;
  @override
  final int remainingPoints;
  @override
  final String? message;

  @override
  String toString() {
    return 'CreateRedemptionResult(redemptionCode: $redemptionCode, remainingPoints: $remainingPoints, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRedemptionResultImpl &&
            (identical(other.redemptionCode, redemptionCode) ||
                other.redemptionCode == redemptionCode) &&
            (identical(other.remainingPoints, remainingPoints) ||
                other.remainingPoints == remainingPoints) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, redemptionCode, remainingPoints, message);

  /// Create a copy of CreateRedemptionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRedemptionResultImplCopyWith<_$CreateRedemptionResultImpl>
  get copyWith =>
      __$$CreateRedemptionResultImplCopyWithImpl<_$CreateRedemptionResultImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateRedemptionResult implements CreateRedemptionResult {
  const factory _CreateRedemptionResult({
    required final String redemptionCode,
    required final int remainingPoints,
    final String? message,
  }) = _$CreateRedemptionResultImpl;

  @override
  String get redemptionCode;
  @override
  int get remainingPoints;
  @override
  String? get message;

  /// Create a copy of CreateRedemptionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateRedemptionResultImplCopyWith<_$CreateRedemptionResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}
