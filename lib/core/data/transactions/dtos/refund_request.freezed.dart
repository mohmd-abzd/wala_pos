// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RefundRequest _$RefundRequestFromJson(Map<String, dynamic> json) {
  return _RefundRequest.fromJson(json);
}

/// @nodoc
mixin _$RefundRequest {
  String get transactionCode => throw _privateConstructorUsedError;

  /// Serializes this RefundRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundRequestCopyWith<RefundRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundRequestCopyWith<$Res> {
  factory $RefundRequestCopyWith(
    RefundRequest value,
    $Res Function(RefundRequest) then,
  ) = _$RefundRequestCopyWithImpl<$Res, RefundRequest>;
  @useResult
  $Res call({String transactionCode});
}

/// @nodoc
class _$RefundRequestCopyWithImpl<$Res, $Val extends RefundRequest>
    implements $RefundRequestCopyWith<$Res> {
  _$RefundRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? transactionCode = null}) {
    return _then(
      _value.copyWith(
            transactionCode: null == transactionCode
                ? _value.transactionCode
                : transactionCode // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RefundRequestImplCopyWith<$Res>
    implements $RefundRequestCopyWith<$Res> {
  factory _$$RefundRequestImplCopyWith(
    _$RefundRequestImpl value,
    $Res Function(_$RefundRequestImpl) then,
  ) = __$$RefundRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transactionCode});
}

/// @nodoc
class __$$RefundRequestImplCopyWithImpl<$Res>
    extends _$RefundRequestCopyWithImpl<$Res, _$RefundRequestImpl>
    implements _$$RefundRequestImplCopyWith<$Res> {
  __$$RefundRequestImplCopyWithImpl(
    _$RefundRequestImpl _value,
    $Res Function(_$RefundRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? transactionCode = null}) {
    return _then(
      _$RefundRequestImpl(
        transactionCode: null == transactionCode
            ? _value.transactionCode
            : transactionCode // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundRequestImpl implements _RefundRequest {
  const _$RefundRequestImpl({required this.transactionCode});

  factory _$RefundRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundRequestImplFromJson(json);

  @override
  final String transactionCode;

  @override
  String toString() {
    return 'RefundRequest(transactionCode: $transactionCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundRequestImpl &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transactionCode);

  /// Create a copy of RefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundRequestImplCopyWith<_$RefundRequestImpl> get copyWith =>
      __$$RefundRequestImplCopyWithImpl<_$RefundRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundRequestImplToJson(this);
  }
}

abstract class _RefundRequest implements RefundRequest {
  const factory _RefundRequest({required final String transactionCode}) =
      _$RefundRequestImpl;

  factory _RefundRequest.fromJson(Map<String, dynamic> json) =
      _$RefundRequestImpl.fromJson;

  @override
  String get transactionCode;

  /// Create a copy of RefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundRequestImplCopyWith<_$RefundRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
