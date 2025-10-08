// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redemption_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RedemptionResponse _$RedemptionResponseFromJson(Map<String, dynamic> json) {
  return _RedemptionResponse.fromJson(json);
}

/// @nodoc
mixin _$RedemptionResponse {
  String? get message => throw _privateConstructorUsedError;
  RedemptionData get data => throw _privateConstructorUsedError;

  /// Serializes this RedemptionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RedemptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RedemptionResponseCopyWith<RedemptionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedemptionResponseCopyWith<$Res> {
  factory $RedemptionResponseCopyWith(
    RedemptionResponse value,
    $Res Function(RedemptionResponse) then,
  ) = _$RedemptionResponseCopyWithImpl<$Res, RedemptionResponse>;
  @useResult
  $Res call({String? message, RedemptionData data});

  $RedemptionDataCopyWith<$Res> get data;
}

/// @nodoc
class _$RedemptionResponseCopyWithImpl<$Res, $Val extends RedemptionResponse>
    implements $RedemptionResponseCopyWith<$Res> {
  _$RedemptionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RedemptionResponse
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
                      as RedemptionData,
          )
          as $Val,
    );
  }

  /// Create a copy of RedemptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RedemptionDataCopyWith<$Res> get data {
    return $RedemptionDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RedemptionResponseImplCopyWith<$Res>
    implements $RedemptionResponseCopyWith<$Res> {
  factory _$$RedemptionResponseImplCopyWith(
    _$RedemptionResponseImpl value,
    $Res Function(_$RedemptionResponseImpl) then,
  ) = __$$RedemptionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, RedemptionData data});

  @override
  $RedemptionDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$RedemptionResponseImplCopyWithImpl<$Res>
    extends _$RedemptionResponseCopyWithImpl<$Res, _$RedemptionResponseImpl>
    implements _$$RedemptionResponseImplCopyWith<$Res> {
  __$$RedemptionResponseImplCopyWithImpl(
    _$RedemptionResponseImpl _value,
    $Res Function(_$RedemptionResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RedemptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed, Object? data = null}) {
    return _then(
      _$RedemptionResponseImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as RedemptionData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RedemptionResponseImpl implements _RedemptionResponse {
  const _$RedemptionResponseImpl({this.message, required this.data});

  factory _$RedemptionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedemptionResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final RedemptionData data;

  @override
  String toString() {
    return 'RedemptionResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedemptionResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of RedemptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedemptionResponseImplCopyWith<_$RedemptionResponseImpl> get copyWith =>
      __$$RedemptionResponseImplCopyWithImpl<_$RedemptionResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RedemptionResponseImplToJson(this);
  }
}

abstract class _RedemptionResponse implements RedemptionResponse {
  const factory _RedemptionResponse({
    final String? message,
    required final RedemptionData data,
  }) = _$RedemptionResponseImpl;

  factory _RedemptionResponse.fromJson(Map<String, dynamic> json) =
      _$RedemptionResponseImpl.fromJson;

  @override
  String? get message;
  @override
  RedemptionData get data;

  /// Create a copy of RedemptionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedemptionResponseImplCopyWith<_$RedemptionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RedemptionData _$RedemptionDataFromJson(Map<String, dynamic> json) {
  return _RedemptionData.fromJson(json);
}

/// @nodoc
mixin _$RedemptionData {
  String get redemptionCode => throw _privateConstructorUsedError;
  int get remainingPoints => throw _privateConstructorUsedError;

  /// Serializes this RedemptionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RedemptionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RedemptionDataCopyWith<RedemptionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedemptionDataCopyWith<$Res> {
  factory $RedemptionDataCopyWith(
    RedemptionData value,
    $Res Function(RedemptionData) then,
  ) = _$RedemptionDataCopyWithImpl<$Res, RedemptionData>;
  @useResult
  $Res call({String redemptionCode, int remainingPoints});
}

/// @nodoc
class _$RedemptionDataCopyWithImpl<$Res, $Val extends RedemptionData>
    implements $RedemptionDataCopyWith<$Res> {
  _$RedemptionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RedemptionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? redemptionCode = null, Object? remainingPoints = null}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RedemptionDataImplCopyWith<$Res>
    implements $RedemptionDataCopyWith<$Res> {
  factory _$$RedemptionDataImplCopyWith(
    _$RedemptionDataImpl value,
    $Res Function(_$RedemptionDataImpl) then,
  ) = __$$RedemptionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String redemptionCode, int remainingPoints});
}

/// @nodoc
class __$$RedemptionDataImplCopyWithImpl<$Res>
    extends _$RedemptionDataCopyWithImpl<$Res, _$RedemptionDataImpl>
    implements _$$RedemptionDataImplCopyWith<$Res> {
  __$$RedemptionDataImplCopyWithImpl(
    _$RedemptionDataImpl _value,
    $Res Function(_$RedemptionDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RedemptionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? redemptionCode = null, Object? remainingPoints = null}) {
    return _then(
      _$RedemptionDataImpl(
        redemptionCode: null == redemptionCode
            ? _value.redemptionCode
            : redemptionCode // ignore: cast_nullable_to_non_nullable
                  as String,
        remainingPoints: null == remainingPoints
            ? _value.remainingPoints
            : remainingPoints // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RedemptionDataImpl implements _RedemptionData {
  const _$RedemptionDataImpl({
    required this.redemptionCode,
    required this.remainingPoints,
  });

  factory _$RedemptionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedemptionDataImplFromJson(json);

  @override
  final String redemptionCode;
  @override
  final int remainingPoints;

  @override
  String toString() {
    return 'RedemptionData(redemptionCode: $redemptionCode, remainingPoints: $remainingPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedemptionDataImpl &&
            (identical(other.redemptionCode, redemptionCode) ||
                other.redemptionCode == redemptionCode) &&
            (identical(other.remainingPoints, remainingPoints) ||
                other.remainingPoints == remainingPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, redemptionCode, remainingPoints);

  /// Create a copy of RedemptionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedemptionDataImplCopyWith<_$RedemptionDataImpl> get copyWith =>
      __$$RedemptionDataImplCopyWithImpl<_$RedemptionDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RedemptionDataImplToJson(this);
  }
}

abstract class _RedemptionData implements RedemptionData {
  const factory _RedemptionData({
    required final String redemptionCode,
    required final int remainingPoints,
  }) = _$RedemptionDataImpl;

  factory _RedemptionData.fromJson(Map<String, dynamic> json) =
      _$RedemptionDataImpl.fromJson;

  @override
  String get redemptionCode;
  @override
  int get remainingPoints;

  /// Create a copy of RedemptionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedemptionDataImplCopyWith<_$RedemptionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
