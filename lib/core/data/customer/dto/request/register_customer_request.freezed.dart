// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_customer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RegisterCustomerRequest _$RegisterCustomerRequestFromJson(
  Map<String, dynamic> json,
) {
  return _RegisterCustomerRequest.fromJson(json);
}

/// @nodoc
mixin _$RegisterCustomerRequest {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get birthdate =>
      throw _privateConstructorUsedError; // "YYYY/MM/DD" or ISO, match backend
  String get gender => throw _privateConstructorUsedError;

  /// Serializes this RegisterCustomerRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterCustomerRequestCopyWith<RegisterCustomerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCustomerRequestCopyWith<$Res> {
  factory $RegisterCustomerRequestCopyWith(
    RegisterCustomerRequest value,
    $Res Function(RegisterCustomerRequest) then,
  ) = _$RegisterCustomerRequestCopyWithImpl<$Res, RegisterCustomerRequest>;
  @useResult
  $Res call({
    String name,
    String email,
    String phoneNumber,
    String birthdate,
    String gender,
  });
}

/// @nodoc
class _$RegisterCustomerRequestCopyWithImpl<
  $Res,
  $Val extends RegisterCustomerRequest
>
    implements $RegisterCustomerRequestCopyWith<$Res> {
  _$RegisterCustomerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? birthdate = null,
    Object? gender = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            birthdate: null == birthdate
                ? _value.birthdate
                : birthdate // ignore: cast_nullable_to_non_nullable
                      as String,
            gender: null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RegisterCustomerRequestImplCopyWith<$Res>
    implements $RegisterCustomerRequestCopyWith<$Res> {
  factory _$$RegisterCustomerRequestImplCopyWith(
    _$RegisterCustomerRequestImpl value,
    $Res Function(_$RegisterCustomerRequestImpl) then,
  ) = __$$RegisterCustomerRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String email,
    String phoneNumber,
    String birthdate,
    String gender,
  });
}

/// @nodoc
class __$$RegisterCustomerRequestImplCopyWithImpl<$Res>
    extends
        _$RegisterCustomerRequestCopyWithImpl<
          $Res,
          _$RegisterCustomerRequestImpl
        >
    implements _$$RegisterCustomerRequestImplCopyWith<$Res> {
  __$$RegisterCustomerRequestImplCopyWithImpl(
    _$RegisterCustomerRequestImpl _value,
    $Res Function(_$RegisterCustomerRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? birthdate = null,
    Object? gender = null,
  }) {
    return _then(
      _$RegisterCustomerRequestImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        birthdate: null == birthdate
            ? _value.birthdate
            : birthdate // ignore: cast_nullable_to_non_nullable
                  as String,
        gender: null == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterCustomerRequestImpl implements _RegisterCustomerRequest {
  const _$RegisterCustomerRequestImpl({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.birthdate,
    required this.gender,
  });

  factory _$RegisterCustomerRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterCustomerRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String birthdate;
  // "YYYY/MM/DD" or ISO, match backend
  @override
  final String gender;

  @override
  String toString() {
    return 'RegisterCustomerRequest(name: $name, email: $email, phoneNumber: $phoneNumber, birthdate: $birthdate, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterCustomerRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, phoneNumber, birthdate, gender);

  /// Create a copy of RegisterCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterCustomerRequestImplCopyWith<_$RegisterCustomerRequestImpl>
  get copyWith =>
      __$$RegisterCustomerRequestImplCopyWithImpl<
        _$RegisterCustomerRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterCustomerRequestImplToJson(this);
  }
}

abstract class _RegisterCustomerRequest implements RegisterCustomerRequest {
  const factory _RegisterCustomerRequest({
    required final String name,
    required final String email,
    required final String phoneNumber,
    required final String birthdate,
    required final String gender,
  }) = _$RegisterCustomerRequestImpl;

  factory _RegisterCustomerRequest.fromJson(Map<String, dynamic> json) =
      _$RegisterCustomerRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  String get birthdate; // "YYYY/MM/DD" or ISO, match backend
  @override
  String get gender;

  /// Create a copy of RegisterCustomerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterCustomerRequestImplCopyWith<_$RegisterCustomerRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
