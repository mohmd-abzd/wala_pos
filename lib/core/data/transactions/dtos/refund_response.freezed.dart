// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RefundResponse _$RefundResponseFromJson(Map<String, dynamic> json) {
  return _RefundResponse.fromJson(json);
}

/// @nodoc
mixin _$RefundResponse {
  String? get message => throw _privateConstructorUsedError;
  RefundData get data => throw _privateConstructorUsedError;

  /// Serializes this RefundResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundResponseCopyWith<RefundResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundResponseCopyWith<$Res> {
  factory $RefundResponseCopyWith(
    RefundResponse value,
    $Res Function(RefundResponse) then,
  ) = _$RefundResponseCopyWithImpl<$Res, RefundResponse>;
  @useResult
  $Res call({String? message, RefundData data});

  $RefundDataCopyWith<$Res> get data;
}

/// @nodoc
class _$RefundResponseCopyWithImpl<$Res, $Val extends RefundResponse>
    implements $RefundResponseCopyWith<$Res> {
  _$RefundResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed, Object? data = null}) {
    return _then(
      _value.copyWith(
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as RefundData,
          )
          as $Val,
    );
  }

  /// Create a copy of RefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefundDataCopyWith<$Res> get data {
    return $RefundDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefundResponseImplCopyWith<$Res>
    implements $RefundResponseCopyWith<$Res> {
  factory _$$RefundResponseImplCopyWith(
    _$RefundResponseImpl value,
    $Res Function(_$RefundResponseImpl) then,
  ) = __$$RefundResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, RefundData data});

  @override
  $RefundDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$RefundResponseImplCopyWithImpl<$Res>
    extends _$RefundResponseCopyWithImpl<$Res, _$RefundResponseImpl>
    implements _$$RefundResponseImplCopyWith<$Res> {
  __$$RefundResponseImplCopyWithImpl(
    _$RefundResponseImpl _value,
    $Res Function(_$RefundResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed, Object? data = null}) {
    return _then(
      _$RefundResponseImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as RefundData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundResponseImpl implements _RefundResponse {
  const _$RefundResponseImpl({this.message, required this.data});

  factory _$RefundResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final RefundData data;

  @override
  String toString() {
    return 'RefundResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of RefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundResponseImplCopyWith<_$RefundResponseImpl> get copyWith =>
      __$$RefundResponseImplCopyWithImpl<_$RefundResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundResponseImplToJson(this);
  }
}

abstract class _RefundResponse implements RefundResponse {
  const factory _RefundResponse({
    final String? message,
    required final RefundData data,
  }) = _$RefundResponseImpl;

  factory _RefundResponse.fromJson(Map<String, dynamic> json) =
      _$RefundResponseImpl.fromJson;

  @override
  String? get message;
  @override
  RefundData get data;

  /// Create a copy of RefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundResponseImplCopyWith<_$RefundResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefundData _$RefundDataFromJson(Map<String, dynamic> json) {
  return _RefundData.fromJson(json);
}

/// @nodoc
mixin _$RefundData {
  String get refundCode => throw _privateConstructorUsedError;
  int get newTotalPoints => throw _privateConstructorUsedError;

  /// Serializes this RefundData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundDataCopyWith<RefundData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundDataCopyWith<$Res> {
  factory $RefundDataCopyWith(
    RefundData value,
    $Res Function(RefundData) then,
  ) = _$RefundDataCopyWithImpl<$Res, RefundData>;
  @useResult
  $Res call({String refundCode, int newTotalPoints});
}

/// @nodoc
class _$RefundDataCopyWithImpl<$Res, $Val extends RefundData>
    implements $RefundDataCopyWith<$Res> {
  _$RefundDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? refundCode = null, Object? newTotalPoints = null}) {
    return _then(
      _value.copyWith(
            refundCode: null == refundCode
                ? _value.refundCode
                : refundCode // ignore: cast_nullable_to_non_nullable
                      as String,
            newTotalPoints: null == newTotalPoints
                ? _value.newTotalPoints
                : newTotalPoints // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RefundDataImplCopyWith<$Res>
    implements $RefundDataCopyWith<$Res> {
  factory _$$RefundDataImplCopyWith(
    _$RefundDataImpl value,
    $Res Function(_$RefundDataImpl) then,
  ) = __$$RefundDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refundCode, int newTotalPoints});
}

/// @nodoc
class __$$RefundDataImplCopyWithImpl<$Res>
    extends _$RefundDataCopyWithImpl<$Res, _$RefundDataImpl>
    implements _$$RefundDataImplCopyWith<$Res> {
  __$$RefundDataImplCopyWithImpl(
    _$RefundDataImpl _value,
    $Res Function(_$RefundDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefundData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? refundCode = null, Object? newTotalPoints = null}) {
    return _then(
      _$RefundDataImpl(
        refundCode: null == refundCode
            ? _value.refundCode
            : refundCode // ignore: cast_nullable_to_non_nullable
                  as String,
        newTotalPoints: null == newTotalPoints
            ? _value.newTotalPoints
            : newTotalPoints // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundDataImpl implements _RefundData {
  const _$RefundDataImpl({
    required this.refundCode,
    required this.newTotalPoints,
  });

  factory _$RefundDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundDataImplFromJson(json);

  @override
  final String refundCode;
  @override
  final int newTotalPoints;

  @override
  String toString() {
    return 'RefundData(refundCode: $refundCode, newTotalPoints: $newTotalPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundDataImpl &&
            (identical(other.refundCode, refundCode) ||
                other.refundCode == refundCode) &&
            (identical(other.newTotalPoints, newTotalPoints) ||
                other.newTotalPoints == newTotalPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refundCode, newTotalPoints);

  /// Create a copy of RefundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundDataImplCopyWith<_$RefundDataImpl> get copyWith =>
      __$$RefundDataImplCopyWithImpl<_$RefundDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundDataImplToJson(this);
  }
}

abstract class _RefundData implements RefundData {
  const factory _RefundData({
    required final String refundCode,
    required final int newTotalPoints,
  }) = _$RefundDataImpl;

  factory _RefundData.fromJson(Map<String, dynamic> json) =
      _$RefundDataImpl.fromJson;

  @override
  String get refundCode;
  @override
  int get newTotalPoints;

  /// Create a copy of RefundData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundDataImplCopyWith<_$RefundDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
