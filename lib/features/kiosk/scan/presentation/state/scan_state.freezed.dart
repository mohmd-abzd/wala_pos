// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ScanState {
  bool get isScanning => throw _privateConstructorUsedError;
  String? get scannedId => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScanStateCopyWith<ScanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanStateCopyWith<$Res> {
  factory $ScanStateCopyWith(ScanState value, $Res Function(ScanState) then) =
      _$ScanStateCopyWithImpl<$Res, ScanState>;
  @useResult
  $Res call({bool isScanning, String? scannedId, String? error});
}

/// @nodoc
class _$ScanStateCopyWithImpl<$Res, $Val extends ScanState>
    implements $ScanStateCopyWith<$Res> {
  _$ScanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isScanning = null,
    Object? scannedId = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            isScanning: null == isScanning
                ? _value.isScanning
                : isScanning // ignore: cast_nullable_to_non_nullable
                      as bool,
            scannedId: freezed == scannedId
                ? _value.scannedId
                : scannedId // ignore: cast_nullable_to_non_nullable
                      as String?,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScanStateImplCopyWith<$Res>
    implements $ScanStateCopyWith<$Res> {
  factory _$$ScanStateImplCopyWith(
    _$ScanStateImpl value,
    $Res Function(_$ScanStateImpl) then,
  ) = __$$ScanStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isScanning, String? scannedId, String? error});
}

/// @nodoc
class __$$ScanStateImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$ScanStateImpl>
    implements _$$ScanStateImplCopyWith<$Res> {
  __$$ScanStateImplCopyWithImpl(
    _$ScanStateImpl _value,
    $Res Function(_$ScanStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isScanning = null,
    Object? scannedId = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$ScanStateImpl(
        isScanning: null == isScanning
            ? _value.isScanning
            : isScanning // ignore: cast_nullable_to_non_nullable
                  as bool,
        scannedId: freezed == scannedId
            ? _value.scannedId
            : scannedId // ignore: cast_nullable_to_non_nullable
                  as String?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ScanStateImpl implements _ScanState {
  _$ScanStateImpl({this.isScanning = false, this.scannedId, this.error});

  @override
  @JsonKey()
  final bool isScanning;
  @override
  final String? scannedId;
  @override
  final String? error;

  @override
  String toString() {
    return 'ScanState(isScanning: $isScanning, scannedId: $scannedId, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanStateImpl &&
            (identical(other.isScanning, isScanning) ||
                other.isScanning == isScanning) &&
            (identical(other.scannedId, scannedId) ||
                other.scannedId == scannedId) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isScanning, scannedId, error);

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanStateImplCopyWith<_$ScanStateImpl> get copyWith =>
      __$$ScanStateImplCopyWithImpl<_$ScanStateImpl>(this, _$identity);
}

abstract class _ScanState implements ScanState {
  factory _ScanState({
    final bool isScanning,
    final String? scannedId,
    final String? error,
  }) = _$ScanStateImpl;

  @override
  bool get isScanning;
  @override
  String? get scannedId;
  @override
  String? get error;

  /// Create a copy of ScanState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanStateImplCopyWith<_$ScanStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
