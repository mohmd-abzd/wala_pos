// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PurchaseResponse _$PurchaseResponseFromJson(Map<String, dynamic> json) {
  return _PurchaseResponse.fromJson(json);
}

/// @nodoc
mixin _$PurchaseResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PurchaseData get data => throw _privateConstructorUsedError;

  /// Serializes this PurchaseResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurchaseResponseCopyWith<PurchaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseResponseCopyWith<$Res> {
  factory $PurchaseResponseCopyWith(
    PurchaseResponse value,
    $Res Function(PurchaseResponse) then,
  ) = _$PurchaseResponseCopyWithImpl<$Res, PurchaseResponse>;
  @useResult
  $Res call({String status, String? message, PurchaseData data});

  $PurchaseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PurchaseResponseCopyWithImpl<$Res, $Val extends PurchaseResponse>
    implements $PurchaseResponseCopyWith<$Res> {
  _$PurchaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as PurchaseData,
          )
          as $Val,
    );
  }

  /// Create a copy of PurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PurchaseDataCopyWith<$Res> get data {
    return $PurchaseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PurchaseResponseImplCopyWith<$Res>
    implements $PurchaseResponseCopyWith<$Res> {
  factory _$$PurchaseResponseImplCopyWith(
    _$PurchaseResponseImpl value,
    $Res Function(_$PurchaseResponseImpl) then,
  ) = __$$PurchaseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, PurchaseData data});

  @override
  $PurchaseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$PurchaseResponseImplCopyWithImpl<$Res>
    extends _$PurchaseResponseCopyWithImpl<$Res, _$PurchaseResponseImpl>
    implements _$$PurchaseResponseImplCopyWith<$Res> {
  __$$PurchaseResponseImplCopyWithImpl(
    _$PurchaseResponseImpl _value,
    $Res Function(_$PurchaseResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(
      _$PurchaseResponseImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as PurchaseData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseResponseImpl implements _PurchaseResponse {
  const _$PurchaseResponseImpl({
    required this.status,
    this.message,
    required this.data,
  });

  factory _$PurchaseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String? message;
  @override
  final PurchaseData data;

  @override
  String toString() {
    return 'PurchaseResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of PurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseResponseImplCopyWith<_$PurchaseResponseImpl> get copyWith =>
      __$$PurchaseResponseImplCopyWithImpl<_$PurchaseResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseResponseImplToJson(this);
  }
}

abstract class _PurchaseResponse implements PurchaseResponse {
  const factory _PurchaseResponse({
    required final String status,
    final String? message,
    required final PurchaseData data,
  }) = _$PurchaseResponseImpl;

  factory _PurchaseResponse.fromJson(Map<String, dynamic> json) =
      _$PurchaseResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  PurchaseData get data;

  /// Create a copy of PurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurchaseResponseImplCopyWith<_$PurchaseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseData _$PurchaseDataFromJson(Map<String, dynamic> json) {
  return _PurchaseData.fromJson(json);
}

/// @nodoc
mixin _$PurchaseData {
  String get transactionCode => throw _privateConstructorUsedError;
  int get newTotalPoints => throw _privateConstructorUsedError;

  /// Serializes this PurchaseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PurchaseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurchaseDataCopyWith<PurchaseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseDataCopyWith<$Res> {
  factory $PurchaseDataCopyWith(
    PurchaseData value,
    $Res Function(PurchaseData) then,
  ) = _$PurchaseDataCopyWithImpl<$Res, PurchaseData>;
  @useResult
  $Res call({String transactionCode, int newTotalPoints});
}

/// @nodoc
class _$PurchaseDataCopyWithImpl<$Res, $Val extends PurchaseData>
    implements $PurchaseDataCopyWith<$Res> {
  _$PurchaseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchaseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? transactionCode = null, Object? newTotalPoints = null}) {
    return _then(
      _value.copyWith(
            transactionCode: null == transactionCode
                ? _value.transactionCode
                : transactionCode // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PurchaseDataImplCopyWith<$Res>
    implements $PurchaseDataCopyWith<$Res> {
  factory _$$PurchaseDataImplCopyWith(
    _$PurchaseDataImpl value,
    $Res Function(_$PurchaseDataImpl) then,
  ) = __$$PurchaseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transactionCode, int newTotalPoints});
}

/// @nodoc
class __$$PurchaseDataImplCopyWithImpl<$Res>
    extends _$PurchaseDataCopyWithImpl<$Res, _$PurchaseDataImpl>
    implements _$$PurchaseDataImplCopyWith<$Res> {
  __$$PurchaseDataImplCopyWithImpl(
    _$PurchaseDataImpl _value,
    $Res Function(_$PurchaseDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchaseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? transactionCode = null, Object? newTotalPoints = null}) {
    return _then(
      _$PurchaseDataImpl(
        transactionCode: null == transactionCode
            ? _value.transactionCode
            : transactionCode // ignore: cast_nullable_to_non_nullable
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
class _$PurchaseDataImpl implements _PurchaseData {
  const _$PurchaseDataImpl({
    required this.transactionCode,
    required this.newTotalPoints,
  });

  factory _$PurchaseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseDataImplFromJson(json);

  @override
  final String transactionCode;
  @override
  final int newTotalPoints;

  @override
  String toString() {
    return 'PurchaseData(transactionCode: $transactionCode, newTotalPoints: $newTotalPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseDataImpl &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode) &&
            (identical(other.newTotalPoints, newTotalPoints) ||
                other.newTotalPoints == newTotalPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transactionCode, newTotalPoints);

  /// Create a copy of PurchaseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseDataImplCopyWith<_$PurchaseDataImpl> get copyWith =>
      __$$PurchaseDataImplCopyWithImpl<_$PurchaseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseDataImplToJson(this);
  }
}

abstract class _PurchaseData implements PurchaseData {
  const factory _PurchaseData({
    required final String transactionCode,
    required final int newTotalPoints,
  }) = _$PurchaseDataImpl;

  factory _PurchaseData.fromJson(Map<String, dynamic> json) =
      _$PurchaseDataImpl.fromJson;

  @override
  String get transactionCode;
  @override
  int get newTotalPoints;

  /// Create a copy of PurchaseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurchaseDataImplCopyWith<_$PurchaseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
