// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_customer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RegisterCustomerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isRegisterCustomerSuccess => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  String? get vcid => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Map<String, dynamic> get registrationForm =>
      throw _privateConstructorUsedError;

  /// Create a copy of RegisterCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterCustomerStateCopyWith<RegisterCustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCustomerStateCopyWith<$Res> {
  factory $RegisterCustomerStateCopyWith(
    RegisterCustomerState value,
    $Res Function(RegisterCustomerState) then,
  ) = _$RegisterCustomerStateCopyWithImpl<$Res, RegisterCustomerState>;
  @useResult
  $Res call({
    bool isLoading,
    bool isRegisterCustomerSuccess,
    String? successMessage,
    String? vcid,
    String? error,
    Map<String, dynamic> registrationForm,
  });
}

/// @nodoc
class _$RegisterCustomerStateCopyWithImpl<
  $Res,
  $Val extends RegisterCustomerState
>
    implements $RegisterCustomerStateCopyWith<$Res> {
  _$RegisterCustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isRegisterCustomerSuccess = null,
    Object? successMessage = freezed,
    Object? vcid = freezed,
    Object? error = freezed,
    Object? registrationForm = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            isRegisterCustomerSuccess: null == isRegisterCustomerSuccess
                ? _value.isRegisterCustomerSuccess
                : isRegisterCustomerSuccess // ignore: cast_nullable_to_non_nullable
                      as bool,
            successMessage: freezed == successMessage
                ? _value.successMessage
                : successMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
            vcid: freezed == vcid
                ? _value.vcid
                : vcid // ignore: cast_nullable_to_non_nullable
                      as String?,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            registrationForm: null == registrationForm
                ? _value.registrationForm
                : registrationForm // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RegisterCustomerStateImplCopyWith<$Res>
    implements $RegisterCustomerStateCopyWith<$Res> {
  factory _$$RegisterCustomerStateImplCopyWith(
    _$RegisterCustomerStateImpl value,
    $Res Function(_$RegisterCustomerStateImpl) then,
  ) = __$$RegisterCustomerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    bool isRegisterCustomerSuccess,
    String? successMessage,
    String? vcid,
    String? error,
    Map<String, dynamic> registrationForm,
  });
}

/// @nodoc
class __$$RegisterCustomerStateImplCopyWithImpl<$Res>
    extends
        _$RegisterCustomerStateCopyWithImpl<$Res, _$RegisterCustomerStateImpl>
    implements _$$RegisterCustomerStateImplCopyWith<$Res> {
  __$$RegisterCustomerStateImplCopyWithImpl(
    _$RegisterCustomerStateImpl _value,
    $Res Function(_$RegisterCustomerStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isRegisterCustomerSuccess = null,
    Object? successMessage = freezed,
    Object? vcid = freezed,
    Object? error = freezed,
    Object? registrationForm = null,
  }) {
    return _then(
      _$RegisterCustomerStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        isRegisterCustomerSuccess: null == isRegisterCustomerSuccess
            ? _value.isRegisterCustomerSuccess
            : isRegisterCustomerSuccess // ignore: cast_nullable_to_non_nullable
                  as bool,
        successMessage: freezed == successMessage
            ? _value.successMessage
            : successMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
        vcid: freezed == vcid
            ? _value.vcid
            : vcid // ignore: cast_nullable_to_non_nullable
                  as String?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        registrationForm: null == registrationForm
            ? _value._registrationForm
            : registrationForm // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$RegisterCustomerStateImpl implements _RegisterCustomerState {
  _$RegisterCustomerStateImpl({
    this.isLoading = false,
    this.isRegisterCustomerSuccess = false,
    this.successMessage,
    this.vcid,
    this.error,
    final Map<String, dynamic> registrationForm = const {},
  }) : _registrationForm = registrationForm;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isRegisterCustomerSuccess;
  @override
  final String? successMessage;
  @override
  final String? vcid;
  @override
  final String? error;
  final Map<String, dynamic> _registrationForm;
  @override
  @JsonKey()
  Map<String, dynamic> get registrationForm {
    if (_registrationForm is EqualUnmodifiableMapView) return _registrationForm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_registrationForm);
  }

  @override
  String toString() {
    return 'RegisterCustomerState(isLoading: $isLoading, isRegisterCustomerSuccess: $isRegisterCustomerSuccess, successMessage: $successMessage, vcid: $vcid, error: $error, registrationForm: $registrationForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterCustomerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(
                  other.isRegisterCustomerSuccess,
                  isRegisterCustomerSuccess,
                ) ||
                other.isRegisterCustomerSuccess == isRegisterCustomerSuccess) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.vcid, vcid) || other.vcid == vcid) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(
              other._registrationForm,
              _registrationForm,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    isRegisterCustomerSuccess,
    successMessage,
    vcid,
    error,
    const DeepCollectionEquality().hash(_registrationForm),
  );

  /// Create a copy of RegisterCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterCustomerStateImplCopyWith<_$RegisterCustomerStateImpl>
  get copyWith =>
      __$$RegisterCustomerStateImplCopyWithImpl<_$RegisterCustomerStateImpl>(
        this,
        _$identity,
      );
}

abstract class _RegisterCustomerState implements RegisterCustomerState {
  factory _RegisterCustomerState({
    final bool isLoading,
    final bool isRegisterCustomerSuccess,
    final String? successMessage,
    final String? vcid,
    final String? error,
    final Map<String, dynamic> registrationForm,
  }) = _$RegisterCustomerStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isRegisterCustomerSuccess;
  @override
  String? get successMessage;
  @override
  String? get vcid;
  @override
  String? get error;
  @override
  Map<String, dynamic> get registrationForm;

  /// Create a copy of RegisterCustomerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterCustomerStateImplCopyWith<_$RegisterCustomerStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
