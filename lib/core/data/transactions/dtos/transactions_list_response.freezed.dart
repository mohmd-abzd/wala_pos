// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TransactionsListResponse _$TransactionsListResponseFromJson(
  Map<String, dynamic> json,
) {
  return _TransactionsListResponse.fromJson(json);
}

/// @nodoc
mixin _$TransactionsListResponse {
  String? get message =>
      throw _privateConstructorUsedError; // 👇 Nest `data` as its own model
  TransactionsData get data => throw _privateConstructorUsedError;

  /// Serializes this TransactionsListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionsListResponseCopyWith<TransactionsListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsListResponseCopyWith<$Res> {
  factory $TransactionsListResponseCopyWith(
    TransactionsListResponse value,
    $Res Function(TransactionsListResponse) then,
  ) = _$TransactionsListResponseCopyWithImpl<$Res, TransactionsListResponse>;
  @useResult
  $Res call({String? message, TransactionsData data});

  $TransactionsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$TransactionsListResponseCopyWithImpl<
  $Res,
  $Val extends TransactionsListResponse
>
    implements $TransactionsListResponseCopyWith<$Res> {
  _$TransactionsListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionsListResponse
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
                      as TransactionsData,
          )
          as $Val,
    );
  }

  /// Create a copy of TransactionsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionsDataCopyWith<$Res> get data {
    return $TransactionsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionsListResponseImplCopyWith<$Res>
    implements $TransactionsListResponseCopyWith<$Res> {
  factory _$$TransactionsListResponseImplCopyWith(
    _$TransactionsListResponseImpl value,
    $Res Function(_$TransactionsListResponseImpl) then,
  ) = __$$TransactionsListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, TransactionsData data});

  @override
  $TransactionsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$TransactionsListResponseImplCopyWithImpl<$Res>
    extends
        _$TransactionsListResponseCopyWithImpl<
          $Res,
          _$TransactionsListResponseImpl
        >
    implements _$$TransactionsListResponseImplCopyWith<$Res> {
  __$$TransactionsListResponseImplCopyWithImpl(
    _$TransactionsListResponseImpl _value,
    $Res Function(_$TransactionsListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransactionsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed, Object? data = null}) {
    return _then(
      _$TransactionsListResponseImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as TransactionsData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionsListResponseImpl implements _TransactionsListResponse {
  const _$TransactionsListResponseImpl({this.message, required this.data});

  factory _$TransactionsListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionsListResponseImplFromJson(json);

  @override
  final String? message;
  // 👇 Nest `data` as its own model
  @override
  final TransactionsData data;

  @override
  String toString() {
    return 'TransactionsListResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsListResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of TransactionsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsListResponseImplCopyWith<_$TransactionsListResponseImpl>
  get copyWith =>
      __$$TransactionsListResponseImplCopyWithImpl<
        _$TransactionsListResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionsListResponseImplToJson(this);
  }
}

abstract class _TransactionsListResponse implements TransactionsListResponse {
  const factory _TransactionsListResponse({
    final String? message,
    required final TransactionsData data,
  }) = _$TransactionsListResponseImpl;

  factory _TransactionsListResponse.fromJson(Map<String, dynamic> json) =
      _$TransactionsListResponseImpl.fromJson;

  @override
  String? get message; // 👇 Nest `data` as its own model
  @override
  TransactionsData get data;

  /// Create a copy of TransactionsListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionsListResponseImplCopyWith<_$TransactionsListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

TransactionsData _$TransactionsDataFromJson(Map<String, dynamic> json) {
  return _TransactionsData.fromJson(json);
}

/// @nodoc
mixin _$TransactionsData {
  List<TransactionDto> get transactions => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this TransactionsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionsDataCopyWith<TransactionsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsDataCopyWith<$Res> {
  factory $TransactionsDataCopyWith(
    TransactionsData value,
    $Res Function(TransactionsData) then,
  ) = _$TransactionsDataCopyWithImpl<$Res, TransactionsData>;
  @useResult
  $Res call({List<TransactionDto> transactions, int total});
}

/// @nodoc
class _$TransactionsDataCopyWithImpl<$Res, $Val extends TransactionsData>
    implements $TransactionsDataCopyWith<$Res> {
  _$TransactionsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? transactions = null, Object? total = null}) {
    return _then(
      _value.copyWith(
            transactions: null == transactions
                ? _value.transactions
                : transactions // ignore: cast_nullable_to_non_nullable
                      as List<TransactionDto>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TransactionsDataImplCopyWith<$Res>
    implements $TransactionsDataCopyWith<$Res> {
  factory _$$TransactionsDataImplCopyWith(
    _$TransactionsDataImpl value,
    $Res Function(_$TransactionsDataImpl) then,
  ) = __$$TransactionsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransactionDto> transactions, int total});
}

/// @nodoc
class __$$TransactionsDataImplCopyWithImpl<$Res>
    extends _$TransactionsDataCopyWithImpl<$Res, _$TransactionsDataImpl>
    implements _$$TransactionsDataImplCopyWith<$Res> {
  __$$TransactionsDataImplCopyWithImpl(
    _$TransactionsDataImpl _value,
    $Res Function(_$TransactionsDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransactionsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? transactions = null, Object? total = null}) {
    return _then(
      _$TransactionsDataImpl(
        transactions: null == transactions
            ? _value._transactions
            : transactions // ignore: cast_nullable_to_non_nullable
                  as List<TransactionDto>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionsDataImpl implements _TransactionsData {
  const _$TransactionsDataImpl({
    required final List<TransactionDto> transactions,
    required this.total,
  }) : _transactions = transactions;

  factory _$TransactionsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionsDataImplFromJson(json);

  final List<TransactionDto> _transactions;
  @override
  List<TransactionDto> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final int total;

  @override
  String toString() {
    return 'TransactionsData(transactions: $transactions, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsDataImpl &&
            const DeepCollectionEquality().equals(
              other._transactions,
              _transactions,
            ) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_transactions),
    total,
  );

  /// Create a copy of TransactionsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsDataImplCopyWith<_$TransactionsDataImpl> get copyWith =>
      __$$TransactionsDataImplCopyWithImpl<_$TransactionsDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionsDataImplToJson(this);
  }
}

abstract class _TransactionsData implements TransactionsData {
  const factory _TransactionsData({
    required final List<TransactionDto> transactions,
    required final int total,
  }) = _$TransactionsDataImpl;

  factory _TransactionsData.fromJson(Map<String, dynamic> json) =
      _$TransactionsDataImpl.fromJson;

  @override
  List<TransactionDto> get transactions;
  @override
  int get total;

  /// Create a copy of TransactionsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionsDataImplCopyWith<_$TransactionsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionDto _$TransactionDtoFromJson(Map<String, dynamic> json) {
  return _TransactionDto.fromJson(json);
}

/// @nodoc
mixin _$TransactionDto {
  int get id => throw _privateConstructorUsedError;
  String get transactionCode => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  String get transactionTime => throw _privateConstructorUsedError;

  /// Serializes this TransactionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionDtoCopyWith<TransactionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDtoCopyWith<$Res> {
  factory $TransactionDtoCopyWith(
    TransactionDto value,
    $Res Function(TransactionDto) then,
  ) = _$TransactionDtoCopyWithImpl<$Res, TransactionDto>;
  @useResult
  $Res call({
    int id,
    String transactionCode,
    double amount,
    int points,
    String transactionTime,
  });
}

/// @nodoc
class _$TransactionDtoCopyWithImpl<$Res, $Val extends TransactionDto>
    implements $TransactionDtoCopyWith<$Res> {
  _$TransactionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionCode = null,
    Object? amount = null,
    Object? points = null,
    Object? transactionTime = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            transactionCode: null == transactionCode
                ? _value.transactionCode
                : transactionCode // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
            points: null == points
                ? _value.points
                : points // ignore: cast_nullable_to_non_nullable
                      as int,
            transactionTime: null == transactionTime
                ? _value.transactionTime
                : transactionTime // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TransactionDtoImplCopyWith<$Res>
    implements $TransactionDtoCopyWith<$Res> {
  factory _$$TransactionDtoImplCopyWith(
    _$TransactionDtoImpl value,
    $Res Function(_$TransactionDtoImpl) then,
  ) = __$$TransactionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String transactionCode,
    double amount,
    int points,
    String transactionTime,
  });
}

/// @nodoc
class __$$TransactionDtoImplCopyWithImpl<$Res>
    extends _$TransactionDtoCopyWithImpl<$Res, _$TransactionDtoImpl>
    implements _$$TransactionDtoImplCopyWith<$Res> {
  __$$TransactionDtoImplCopyWithImpl(
    _$TransactionDtoImpl _value,
    $Res Function(_$TransactionDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransactionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionCode = null,
    Object? amount = null,
    Object? points = null,
    Object? transactionTime = null,
  }) {
    return _then(
      _$TransactionDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        transactionCode: null == transactionCode
            ? _value.transactionCode
            : transactionCode // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
        points: null == points
            ? _value.points
            : points // ignore: cast_nullable_to_non_nullable
                  as int,
        transactionTime: null == transactionTime
            ? _value.transactionTime
            : transactionTime // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDtoImpl implements _TransactionDto {
  const _$TransactionDtoImpl({
    required this.id,
    required this.transactionCode,
    required this.amount,
    required this.points,
    required this.transactionTime,
  });

  factory _$TransactionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String transactionCode;
  @override
  final double amount;
  @override
  final int points;
  @override
  final String transactionTime;

  @override
  String toString() {
    return 'TransactionDto(id: $id, transactionCode: $transactionCode, amount: $amount, points: $points, transactionTime: $transactionTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionCode, transactionCode) ||
                other.transactionCode == transactionCode) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.transactionTime, transactionTime) ||
                other.transactionTime == transactionTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    transactionCode,
    amount,
    points,
    transactionTime,
  );

  /// Create a copy of TransactionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDtoImplCopyWith<_$TransactionDtoImpl> get copyWith =>
      __$$TransactionDtoImplCopyWithImpl<_$TransactionDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDtoImplToJson(this);
  }
}

abstract class _TransactionDto implements TransactionDto {
  const factory _TransactionDto({
    required final int id,
    required final String transactionCode,
    required final double amount,
    required final int points,
    required final String transactionTime,
  }) = _$TransactionDtoImpl;

  factory _TransactionDto.fromJson(Map<String, dynamic> json) =
      _$TransactionDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get transactionCode;
  @override
  double get amount;
  @override
  int get points;
  @override
  String get transactionTime;

  /// Create a copy of TransactionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDtoImplCopyWith<_$TransactionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
