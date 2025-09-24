// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TransactionsState {
  List<TransactionDto> get transactions => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionsStateCopyWith<TransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsStateCopyWith<$Res> {
  factory $TransactionsStateCopyWith(
    TransactionsState value,
    $Res Function(TransactionsState) then,
  ) = _$TransactionsStateCopyWithImpl<$Res, TransactionsState>;
  @useResult
  $Res call({
    List<TransactionDto> transactions,
    bool isLoading,
    bool hasMore,
    int page,
  });
}

/// @nodoc
class _$TransactionsStateCopyWithImpl<$Res, $Val extends TransactionsState>
    implements $TransactionsStateCopyWith<$Res> {
  _$TransactionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? isLoading = null,
    Object? hasMore = null,
    Object? page = null,
  }) {
    return _then(
      _value.copyWith(
            transactions: null == transactions
                ? _value.transactions
                : transactions // ignore: cast_nullable_to_non_nullable
                      as List<TransactionDto>,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasMore: null == hasMore
                ? _value.hasMore
                : hasMore // ignore: cast_nullable_to_non_nullable
                      as bool,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TransactionsStateImplCopyWith<$Res>
    implements $TransactionsStateCopyWith<$Res> {
  factory _$$TransactionsStateImplCopyWith(
    _$TransactionsStateImpl value,
    $Res Function(_$TransactionsStateImpl) then,
  ) = __$$TransactionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<TransactionDto> transactions,
    bool isLoading,
    bool hasMore,
    int page,
  });
}

/// @nodoc
class __$$TransactionsStateImplCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$TransactionsStateImpl>
    implements _$$TransactionsStateImplCopyWith<$Res> {
  __$$TransactionsStateImplCopyWithImpl(
    _$TransactionsStateImpl _value,
    $Res Function(_$TransactionsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
    Object? isLoading = null,
    Object? hasMore = null,
    Object? page = null,
  }) {
    return _then(
      _$TransactionsStateImpl(
        transactions: null == transactions
            ? _value._transactions
            : transactions // ignore: cast_nullable_to_non_nullable
                  as List<TransactionDto>,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasMore: null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$TransactionsStateImpl implements _TransactionsState {
  const _$TransactionsStateImpl({
    required final List<TransactionDto> transactions,
    required this.isLoading,
    required this.hasMore,
    required this.page,
  }) : _transactions = transactions;

  final List<TransactionDto> _transactions;
  @override
  List<TransactionDto> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final bool isLoading;
  @override
  final bool hasMore;
  @override
  final int page;

  @override
  String toString() {
    return 'TransactionsState(transactions: $transactions, isLoading: $isLoading, hasMore: $hasMore, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsStateImpl &&
            const DeepCollectionEquality().equals(
              other._transactions,
              _transactions,
            ) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_transactions),
    isLoading,
    hasMore,
    page,
  );

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsStateImplCopyWith<_$TransactionsStateImpl> get copyWith =>
      __$$TransactionsStateImplCopyWithImpl<_$TransactionsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _TransactionsState implements TransactionsState {
  const factory _TransactionsState({
    required final List<TransactionDto> transactions,
    required final bool isLoading,
    required final bool hasMore,
    required final int page,
  }) = _$TransactionsStateImpl;

  @override
  List<TransactionDto> get transactions;
  @override
  bool get isLoading;
  @override
  bool get hasMore;
  @override
  int get page;

  /// Create a copy of TransactionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionsStateImplCopyWith<_$TransactionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
