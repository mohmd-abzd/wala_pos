// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_session_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PurchaseSessionState {
  // polling
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  List<Invoice> get invoices => throw _privateConstructorUsedError;
  DateTime? get lastUpdatedAt =>
      throw _privateConstructorUsedError; // selection
  Invoice? get selectedInvoice => throw _privateConstructorUsedError; // submit
  bool get isSubmitting => throw _privateConstructorUsedError;
  String? get submitError => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  bool get changed => throw _privateConstructorUsedError;
  int? get newTotalPoints => throw _privateConstructorUsedError;

  /// Create a copy of PurchaseSessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurchaseSessionStateCopyWith<PurchaseSessionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseSessionStateCopyWith<$Res> {
  factory $PurchaseSessionStateCopyWith(
    PurchaseSessionState value,
    $Res Function(PurchaseSessionState) then,
  ) = _$PurchaseSessionStateCopyWithImpl<$Res, PurchaseSessionState>;
  @useResult
  $Res call({
    bool isLoading,
    String? error,
    bool active,
    List<Invoice> invoices,
    DateTime? lastUpdatedAt,
    Invoice? selectedInvoice,
    bool isSubmitting,
    String? submitError,
    String? successMessage,
    bool changed,
    int? newTotalPoints,
  });
}

/// @nodoc
class _$PurchaseSessionStateCopyWithImpl<
  $Res,
  $Val extends PurchaseSessionState
>
    implements $PurchaseSessionStateCopyWith<$Res> {
  _$PurchaseSessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchaseSessionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? active = null,
    Object? invoices = null,
    Object? lastUpdatedAt = freezed,
    Object? selectedInvoice = freezed,
    Object? isSubmitting = null,
    Object? submitError = freezed,
    Object? successMessage = freezed,
    Object? changed = null,
    Object? newTotalPoints = freezed,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            active: null == active
                ? _value.active
                : active // ignore: cast_nullable_to_non_nullable
                      as bool,
            invoices: null == invoices
                ? _value.invoices
                : invoices // ignore: cast_nullable_to_non_nullable
                      as List<Invoice>,
            lastUpdatedAt: freezed == lastUpdatedAt
                ? _value.lastUpdatedAt
                : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            selectedInvoice: freezed == selectedInvoice
                ? _value.selectedInvoice
                : selectedInvoice // ignore: cast_nullable_to_non_nullable
                      as Invoice?,
            isSubmitting: null == isSubmitting
                ? _value.isSubmitting
                : isSubmitting // ignore: cast_nullable_to_non_nullable
                      as bool,
            submitError: freezed == submitError
                ? _value.submitError
                : submitError // ignore: cast_nullable_to_non_nullable
                      as String?,
            successMessage: freezed == successMessage
                ? _value.successMessage
                : successMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
            changed: null == changed
                ? _value.changed
                : changed // ignore: cast_nullable_to_non_nullable
                      as bool,
            newTotalPoints: freezed == newTotalPoints
                ? _value.newTotalPoints
                : newTotalPoints // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PurchaseSessionStateImplCopyWith<$Res>
    implements $PurchaseSessionStateCopyWith<$Res> {
  factory _$$PurchaseSessionStateImplCopyWith(
    _$PurchaseSessionStateImpl value,
    $Res Function(_$PurchaseSessionStateImpl) then,
  ) = __$$PurchaseSessionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    String? error,
    bool active,
    List<Invoice> invoices,
    DateTime? lastUpdatedAt,
    Invoice? selectedInvoice,
    bool isSubmitting,
    String? submitError,
    String? successMessage,
    bool changed,
    int? newTotalPoints,
  });
}

/// @nodoc
class __$$PurchaseSessionStateImplCopyWithImpl<$Res>
    extends _$PurchaseSessionStateCopyWithImpl<$Res, _$PurchaseSessionStateImpl>
    implements _$$PurchaseSessionStateImplCopyWith<$Res> {
  __$$PurchaseSessionStateImplCopyWithImpl(
    _$PurchaseSessionStateImpl _value,
    $Res Function(_$PurchaseSessionStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PurchaseSessionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = freezed,
    Object? active = null,
    Object? invoices = null,
    Object? lastUpdatedAt = freezed,
    Object? selectedInvoice = freezed,
    Object? isSubmitting = null,
    Object? submitError = freezed,
    Object? successMessage = freezed,
    Object? changed = null,
    Object? newTotalPoints = freezed,
  }) {
    return _then(
      _$PurchaseSessionStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        active: null == active
            ? _value.active
            : active // ignore: cast_nullable_to_non_nullable
                  as bool,
        invoices: null == invoices
            ? _value._invoices
            : invoices // ignore: cast_nullable_to_non_nullable
                  as List<Invoice>,
        lastUpdatedAt: freezed == lastUpdatedAt
            ? _value.lastUpdatedAt
            : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        selectedInvoice: freezed == selectedInvoice
            ? _value.selectedInvoice
            : selectedInvoice // ignore: cast_nullable_to_non_nullable
                  as Invoice?,
        isSubmitting: null == isSubmitting
            ? _value.isSubmitting
            : isSubmitting // ignore: cast_nullable_to_non_nullable
                  as bool,
        submitError: freezed == submitError
            ? _value.submitError
            : submitError // ignore: cast_nullable_to_non_nullable
                  as String?,
        successMessage: freezed == successMessage
            ? _value.successMessage
            : successMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
        changed: null == changed
            ? _value.changed
            : changed // ignore: cast_nullable_to_non_nullable
                  as bool,
        newTotalPoints: freezed == newTotalPoints
            ? _value.newTotalPoints
            : newTotalPoints // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$PurchaseSessionStateImpl implements _PurchaseSessionState {
  _$PurchaseSessionStateImpl({
    this.isLoading = false,
    this.error,
    this.active = true,
    final List<Invoice> invoices = const <Invoice>[],
    this.lastUpdatedAt,
    this.selectedInvoice,
    this.isSubmitting = false,
    this.submitError,
    this.successMessage,
    this.changed = false,
    this.newTotalPoints,
  }) : _invoices = invoices;

  // polling
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool active;
  final List<Invoice> _invoices;
  @override
  @JsonKey()
  List<Invoice> get invoices {
    if (_invoices is EqualUnmodifiableListView) return _invoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invoices);
  }

  @override
  final DateTime? lastUpdatedAt;
  // selection
  @override
  final Invoice? selectedInvoice;
  // submit
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  final String? submitError;
  @override
  final String? successMessage;
  @override
  @JsonKey()
  final bool changed;
  @override
  final int? newTotalPoints;

  @override
  String toString() {
    return 'PurchaseSessionState(isLoading: $isLoading, error: $error, active: $active, invoices: $invoices, lastUpdatedAt: $lastUpdatedAt, selectedInvoice: $selectedInvoice, isSubmitting: $isSubmitting, submitError: $submitError, successMessage: $successMessage, changed: $changed, newTotalPoints: $newTotalPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseSessionStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality().equals(other._invoices, _invoices) &&
            (identical(other.lastUpdatedAt, lastUpdatedAt) ||
                other.lastUpdatedAt == lastUpdatedAt) &&
            (identical(other.selectedInvoice, selectedInvoice) ||
                other.selectedInvoice == selectedInvoice) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.submitError, submitError) ||
                other.submitError == submitError) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.changed, changed) || other.changed == changed) &&
            (identical(other.newTotalPoints, newTotalPoints) ||
                other.newTotalPoints == newTotalPoints));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    error,
    active,
    const DeepCollectionEquality().hash(_invoices),
    lastUpdatedAt,
    selectedInvoice,
    isSubmitting,
    submitError,
    successMessage,
    changed,
    newTotalPoints,
  );

  /// Create a copy of PurchaseSessionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseSessionStateImplCopyWith<_$PurchaseSessionStateImpl>
  get copyWith =>
      __$$PurchaseSessionStateImplCopyWithImpl<_$PurchaseSessionStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PurchaseSessionState implements PurchaseSessionState {
  factory _PurchaseSessionState({
    final bool isLoading,
    final String? error,
    final bool active,
    final List<Invoice> invoices,
    final DateTime? lastUpdatedAt,
    final Invoice? selectedInvoice,
    final bool isSubmitting,
    final String? submitError,
    final String? successMessage,
    final bool changed,
    final int? newTotalPoints,
  }) = _$PurchaseSessionStateImpl;

  // polling
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  bool get active;
  @override
  List<Invoice> get invoices;
  @override
  DateTime? get lastUpdatedAt; // selection
  @override
  Invoice? get selectedInvoice; // submit
  @override
  bool get isSubmitting;
  @override
  String? get submitError;
  @override
  String? get successMessage;
  @override
  bool get changed;
  @override
  int? get newTotalPoints;

  /// Create a copy of PurchaseSessionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurchaseSessionStateImplCopyWith<_$PurchaseSessionStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
