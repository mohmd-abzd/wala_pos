// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SettingsState {
  String get systemIp => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get acceptFirstInvoice => throw _privateConstructorUsedError;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
    SettingsState value,
    $Res Function(SettingsState) then,
  ) = _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({String systemIp, bool loading, bool acceptFirstInvoice});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systemIp = null,
    Object? loading = null,
    Object? acceptFirstInvoice = null,
  }) {
    return _then(
      _value.copyWith(
            systemIp: null == systemIp
                ? _value.systemIp
                : systemIp // ignore: cast_nullable_to_non_nullable
                      as String,
            loading: null == loading
                ? _value.loading
                : loading // ignore: cast_nullable_to_non_nullable
                      as bool,
            acceptFirstInvoice: null == acceptFirstInvoice
                ? _value.acceptFirstInvoice
                : acceptFirstInvoice // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
    _$SettingsStateImpl value,
    $Res Function(_$SettingsStateImpl) then,
  ) = __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String systemIp, bool loading, bool acceptFirstInvoice});
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
    _$SettingsStateImpl _value,
    $Res Function(_$SettingsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systemIp = null,
    Object? loading = null,
    Object? acceptFirstInvoice = null,
  }) {
    return _then(
      _$SettingsStateImpl(
        systemIp: null == systemIp
            ? _value.systemIp
            : systemIp // ignore: cast_nullable_to_non_nullable
                  as String,
        loading: null == loading
            ? _value.loading
            : loading // ignore: cast_nullable_to_non_nullable
                  as bool,
        acceptFirstInvoice: null == acceptFirstInvoice
            ? _value.acceptFirstInvoice
            : acceptFirstInvoice // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SettingsStateImpl implements _SettingsState {
  _$SettingsStateImpl({
    this.systemIp = '',
    this.loading = true,
    this.acceptFirstInvoice = false,
  });

  @override
  @JsonKey()
  final String systemIp;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool acceptFirstInvoice;

  @override
  String toString() {
    return 'SettingsState(systemIp: $systemIp, loading: $loading, acceptFirstInvoice: $acceptFirstInvoice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.systemIp, systemIp) ||
                other.systemIp == systemIp) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.acceptFirstInvoice, acceptFirstInvoice) ||
                other.acceptFirstInvoice == acceptFirstInvoice));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, systemIp, loading, acceptFirstInvoice);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  factory _SettingsState({
    final String systemIp,
    final bool loading,
    final bool acceptFirstInvoice,
  }) = _$SettingsStateImpl;

  @override
  String get systemIp;
  @override
  bool get loading;
  @override
  bool get acceptFirstInvoice;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
