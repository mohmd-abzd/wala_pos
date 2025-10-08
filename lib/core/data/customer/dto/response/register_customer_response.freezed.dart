// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_customer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RegisterCustomerResponse _$RegisterCustomerResponseFromJson(
  Map<String, dynamic> json,
) {
  return _RegisterCustomerResponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterCustomerResponse {
  String? get message => throw _privateConstructorUsedError;
  RegisterCustomerData get data => throw _privateConstructorUsedError;

  /// Serializes this RegisterCustomerResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterCustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterCustomerResponseCopyWith<RegisterCustomerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCustomerResponseCopyWith<$Res> {
  factory $RegisterCustomerResponseCopyWith(
    RegisterCustomerResponse value,
    $Res Function(RegisterCustomerResponse) then,
  ) = _$RegisterCustomerResponseCopyWithImpl<$Res, RegisterCustomerResponse>;
  @useResult
  $Res call({String? message, RegisterCustomerData data});

  $RegisterCustomerDataCopyWith<$Res> get data;
}

/// @nodoc
class _$RegisterCustomerResponseCopyWithImpl<
  $Res,
  $Val extends RegisterCustomerResponse
>
    implements $RegisterCustomerResponseCopyWith<$Res> {
  _$RegisterCustomerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterCustomerResponse
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
                      as RegisterCustomerData,
          )
          as $Val,
    );
  }

  /// Create a copy of RegisterCustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegisterCustomerDataCopyWith<$Res> get data {
    return $RegisterCustomerDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterCustomerResponseImplCopyWith<$Res>
    implements $RegisterCustomerResponseCopyWith<$Res> {
  factory _$$RegisterCustomerResponseImplCopyWith(
    _$RegisterCustomerResponseImpl value,
    $Res Function(_$RegisterCustomerResponseImpl) then,
  ) = __$$RegisterCustomerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, RegisterCustomerData data});

  @override
  $RegisterCustomerDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$RegisterCustomerResponseImplCopyWithImpl<$Res>
    extends
        _$RegisterCustomerResponseCopyWithImpl<
          $Res,
          _$RegisterCustomerResponseImpl
        >
    implements _$$RegisterCustomerResponseImplCopyWith<$Res> {
  __$$RegisterCustomerResponseImplCopyWithImpl(
    _$RegisterCustomerResponseImpl _value,
    $Res Function(_$RegisterCustomerResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterCustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed, Object? data = null}) {
    return _then(
      _$RegisterCustomerResponseImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as RegisterCustomerData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterCustomerResponseImpl implements _RegisterCustomerResponse {
  const _$RegisterCustomerResponseImpl({this.message, required this.data});

  factory _$RegisterCustomerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterCustomerResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final RegisterCustomerData data;

  @override
  String toString() {
    return 'RegisterCustomerResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterCustomerResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of RegisterCustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterCustomerResponseImplCopyWith<_$RegisterCustomerResponseImpl>
  get copyWith =>
      __$$RegisterCustomerResponseImplCopyWithImpl<
        _$RegisterCustomerResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterCustomerResponseImplToJson(this);
  }
}

abstract class _RegisterCustomerResponse implements RegisterCustomerResponse {
  const factory _RegisterCustomerResponse({
    final String? message,
    required final RegisterCustomerData data,
  }) = _$RegisterCustomerResponseImpl;

  factory _RegisterCustomerResponse.fromJson(Map<String, dynamic> json) =
      _$RegisterCustomerResponseImpl.fromJson;

  @override
  String? get message;
  @override
  RegisterCustomerData get data;

  /// Create a copy of RegisterCustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterCustomerResponseImplCopyWith<_$RegisterCustomerResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

RegisterCustomerData _$RegisterCustomerDataFromJson(Map<String, dynamic> json) {
  return _RegisterCustomerData.fromJson(json);
}

/// @nodoc
mixin _$RegisterCustomerData {
  String get vcid => throw _privateConstructorUsedError;
  int? get customerId => throw _privateConstructorUsedError;

  /// Serializes this RegisterCustomerData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterCustomerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterCustomerDataCopyWith<RegisterCustomerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCustomerDataCopyWith<$Res> {
  factory $RegisterCustomerDataCopyWith(
    RegisterCustomerData value,
    $Res Function(RegisterCustomerData) then,
  ) = _$RegisterCustomerDataCopyWithImpl<$Res, RegisterCustomerData>;
  @useResult
  $Res call({String vcid, int? customerId});
}

/// @nodoc
class _$RegisterCustomerDataCopyWithImpl<
  $Res,
  $Val extends RegisterCustomerData
>
    implements $RegisterCustomerDataCopyWith<$Res> {
  _$RegisterCustomerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterCustomerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? vcid = null, Object? customerId = freezed}) {
    return _then(
      _value.copyWith(
            vcid: null == vcid
                ? _value.vcid
                : vcid // ignore: cast_nullable_to_non_nullable
                      as String,
            customerId: freezed == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RegisterCustomerDataImplCopyWith<$Res>
    implements $RegisterCustomerDataCopyWith<$Res> {
  factory _$$RegisterCustomerDataImplCopyWith(
    _$RegisterCustomerDataImpl value,
    $Res Function(_$RegisterCustomerDataImpl) then,
  ) = __$$RegisterCustomerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String vcid, int? customerId});
}

/// @nodoc
class __$$RegisterCustomerDataImplCopyWithImpl<$Res>
    extends _$RegisterCustomerDataCopyWithImpl<$Res, _$RegisterCustomerDataImpl>
    implements _$$RegisterCustomerDataImplCopyWith<$Res> {
  __$$RegisterCustomerDataImplCopyWithImpl(
    _$RegisterCustomerDataImpl _value,
    $Res Function(_$RegisterCustomerDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterCustomerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? vcid = null, Object? customerId = freezed}) {
    return _then(
      _$RegisterCustomerDataImpl(
        vcid: null == vcid
            ? _value.vcid
            : vcid // ignore: cast_nullable_to_non_nullable
                  as String,
        customerId: freezed == customerId
            ? _value.customerId
            : customerId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterCustomerDataImpl implements _RegisterCustomerData {
  const _$RegisterCustomerDataImpl({required this.vcid, this.customerId});

  factory _$RegisterCustomerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterCustomerDataImplFromJson(json);

  @override
  final String vcid;
  @override
  final int? customerId;

  @override
  String toString() {
    return 'RegisterCustomerData(vcid: $vcid, customerId: $customerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterCustomerDataImpl &&
            (identical(other.vcid, vcid) || other.vcid == vcid) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vcid, customerId);

  /// Create a copy of RegisterCustomerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterCustomerDataImplCopyWith<_$RegisterCustomerDataImpl>
  get copyWith =>
      __$$RegisterCustomerDataImplCopyWithImpl<_$RegisterCustomerDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterCustomerDataImplToJson(this);
  }
}

abstract class _RegisterCustomerData implements RegisterCustomerData {
  const factory _RegisterCustomerData({
    required final String vcid,
    final int? customerId,
  }) = _$RegisterCustomerDataImpl;

  factory _RegisterCustomerData.fromJson(Map<String, dynamic> json) =
      _$RegisterCustomerDataImpl.fromJson;

  @override
  String get vcid;
  @override
  int? get customerId;

  /// Create a copy of RegisterCustomerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterCustomerDataImplCopyWith<_$RegisterCustomerDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
