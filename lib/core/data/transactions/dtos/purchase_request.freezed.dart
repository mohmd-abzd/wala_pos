// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PurchaseRequest _$PurchaseRequestFromJson(Map<String, dynamic> json) {
  return _PurchaseRequest.fromJson(json);
}

/// @nodoc
mixin _$PurchaseRequest {
  int get customerId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  /// Serializes this PurchaseRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PurchaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurchaseRequestCopyWith<PurchaseRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseRequestCopyWith<$Res> {
  factory $PurchaseRequestCopyWith(
    PurchaseRequest value,
    $Res Function(PurchaseRequest) then,
  ) = _$PurchaseRequestCopyWithImpl<$Res, PurchaseRequest>;
  @useResult
  $Res call({int customerId, double amount});
}

/// @nodoc
class _$PurchaseRequestCopyWithImpl<$Res, $Val extends PurchaseRequest>
    implements $PurchaseRequestCopyWith<$Res> {
  _$PurchaseRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? customerId = null, Object? amount = null}) {
    return _then(
      _value.copyWith(
            customerId: null == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                      as int,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PurchaseRequestImplCopyWith<$Res>
    implements $PurchaseRequestCopyWith<$Res> {
  factory _$$PurchaseRequestImplCopyWith(
    _$PurchaseRequestImpl value,
    $Res Function(_$PurchaseRequestImpl) then,
  ) = __$$PurchaseRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int customerId, double amount});
}

/// @nodoc
class __$$PurchaseRequestImplCopyWithImpl<$Res>
    extends _$PurchaseRequestCopyWithImpl<$Res, _$PurchaseRequestImpl>
    implements _$$PurchaseRequestImplCopyWith<$Res> {
  __$$PurchaseRequestImplCopyWithImpl(
    _$PurchaseRequestImpl _value,
    $Res Function(_$PurchaseRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? customerId = null, Object? amount = null}) {
    return _then(
      _$PurchaseRequestImpl(
        customerId: null == customerId
            ? _value.customerId
            : customerId // ignore: cast_nullable_to_non_nullable
                  as int,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseRequestImpl implements _PurchaseRequest {
  const _$PurchaseRequestImpl({required this.customerId, required this.amount});

  factory _$PurchaseRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseRequestImplFromJson(json);

  @override
  final int customerId;
  @override
  final double amount;

  @override
  String toString() {
    return 'PurchaseRequest(customerId: $customerId, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseRequestImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerId, amount);

  /// Create a copy of PurchaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseRequestImplCopyWith<_$PurchaseRequestImpl> get copyWith =>
      __$$PurchaseRequestImplCopyWithImpl<_$PurchaseRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseRequestImplToJson(this);
  }
}

abstract class _PurchaseRequest implements PurchaseRequest {
  const factory _PurchaseRequest({
    required final int customerId,
    required final double amount,
  }) = _$PurchaseRequestImpl;

  factory _PurchaseRequest.fromJson(Map<String, dynamic> json) =
      _$PurchaseRequestImpl.fromJson;

  @override
  int get customerId;
  @override
  double get amount;

  /// Create a copy of PurchaseRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurchaseRequestImplCopyWith<_$PurchaseRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
