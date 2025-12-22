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
  bool get isRefund => throw _privateConstructorUsedError;
  bool get isRefunded => throw _privateConstructorUsedError;
  BranchDto get branch => throw _privateConstructorUsedError;
  StaffDto get staff => throw _privateConstructorUsedError;

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
    bool isRefund,
    bool isRefunded,
    BranchDto branch,
    StaffDto staff,
  });

  $BranchDtoCopyWith<$Res> get branch;
  $StaffDtoCopyWith<$Res> get staff;
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
    Object? isRefund = null,
    Object? isRefunded = null,
    Object? branch = null,
    Object? staff = null,
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
            isRefund: null == isRefund
                ? _value.isRefund
                : isRefund // ignore: cast_nullable_to_non_nullable
                      as bool,
            isRefunded: null == isRefunded
                ? _value.isRefunded
                : isRefunded // ignore: cast_nullable_to_non_nullable
                      as bool,
            branch: null == branch
                ? _value.branch
                : branch // ignore: cast_nullable_to_non_nullable
                      as BranchDto,
            staff: null == staff
                ? _value.staff
                : staff // ignore: cast_nullable_to_non_nullable
                      as StaffDto,
          )
          as $Val,
    );
  }

  /// Create a copy of TransactionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BranchDtoCopyWith<$Res> get branch {
    return $BranchDtoCopyWith<$Res>(_value.branch, (value) {
      return _then(_value.copyWith(branch: value) as $Val);
    });
  }

  /// Create a copy of TransactionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StaffDtoCopyWith<$Res> get staff {
    return $StaffDtoCopyWith<$Res>(_value.staff, (value) {
      return _then(_value.copyWith(staff: value) as $Val);
    });
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
    bool isRefund,
    bool isRefunded,
    BranchDto branch,
    StaffDto staff,
  });

  @override
  $BranchDtoCopyWith<$Res> get branch;
  @override
  $StaffDtoCopyWith<$Res> get staff;
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
    Object? isRefund = null,
    Object? isRefunded = null,
    Object? branch = null,
    Object? staff = null,
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
        isRefund: null == isRefund
            ? _value.isRefund
            : isRefund // ignore: cast_nullable_to_non_nullable
                  as bool,
        isRefunded: null == isRefunded
            ? _value.isRefunded
            : isRefunded // ignore: cast_nullable_to_non_nullable
                  as bool,
        branch: null == branch
            ? _value.branch
            : branch // ignore: cast_nullable_to_non_nullable
                  as BranchDto,
        staff: null == staff
            ? _value.staff
            : staff // ignore: cast_nullable_to_non_nullable
                  as StaffDto,
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
    required this.isRefund,
    required this.isRefunded,
    required this.branch,
    required this.staff,
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
  final bool isRefund;
  @override
  final bool isRefunded;
  @override
  final BranchDto branch;
  @override
  final StaffDto staff;

  @override
  String toString() {
    return 'TransactionDto(id: $id, transactionCode: $transactionCode, amount: $amount, points: $points, transactionTime: $transactionTime, isRefund: $isRefund, isRefunded: $isRefunded, branch: $branch, staff: $staff)';
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
                other.transactionTime == transactionTime) &&
            (identical(other.isRefund, isRefund) ||
                other.isRefund == isRefund) &&
            (identical(other.isRefunded, isRefunded) ||
                other.isRefunded == isRefunded) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.staff, staff) || other.staff == staff));
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
    isRefund,
    isRefunded,
    branch,
    staff,
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
    required final bool isRefund,
    required final bool isRefunded,
    required final BranchDto branch,
    required final StaffDto staff,
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
  @override
  bool get isRefund;
  @override
  bool get isRefunded;
  @override
  BranchDto get branch;
  @override
  StaffDto get staff;

  /// Create a copy of TransactionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDtoImplCopyWith<_$TransactionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BranchDto _$BranchDtoFromJson(Map<String, dynamic> json) {
  return _BranchDto.fromJson(json);
}

/// @nodoc
mixin _$BranchDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this BranchDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchDtoCopyWith<BranchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchDtoCopyWith<$Res> {
  factory $BranchDtoCopyWith(BranchDto value, $Res Function(BranchDto) then) =
      _$BranchDtoCopyWithImpl<$Res, BranchDto>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$BranchDtoCopyWithImpl<$Res, $Val extends BranchDto>
    implements $BranchDtoCopyWith<$Res> {
  _$BranchDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BranchDtoImplCopyWith<$Res>
    implements $BranchDtoCopyWith<$Res> {
  factory _$$BranchDtoImplCopyWith(
    _$BranchDtoImpl value,
    $Res Function(_$BranchDtoImpl) then,
  ) = __$$BranchDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$BranchDtoImplCopyWithImpl<$Res>
    extends _$BranchDtoCopyWithImpl<$Res, _$BranchDtoImpl>
    implements _$$BranchDtoImplCopyWith<$Res> {
  __$$BranchDtoImplCopyWithImpl(
    _$BranchDtoImpl _value,
    $Res Function(_$BranchDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BranchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$BranchDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchDtoImpl implements _BranchDto {
  const _$BranchDtoImpl({required this.id, required this.name});

  factory _$BranchDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'BranchDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of BranchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchDtoImplCopyWith<_$BranchDtoImpl> get copyWith =>
      __$$BranchDtoImplCopyWithImpl<_$BranchDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchDtoImplToJson(this);
  }
}

abstract class _BranchDto implements BranchDto {
  const factory _BranchDto({
    required final int id,
    required final String name,
  }) = _$BranchDtoImpl;

  factory _BranchDto.fromJson(Map<String, dynamic> json) =
      _$BranchDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of BranchDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchDtoImplCopyWith<_$BranchDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StaffDto _$StaffDtoFromJson(Map<String, dynamic> json) {
  return _StaffDto.fromJson(json);
}

/// @nodoc
mixin _$StaffDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this StaffDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffDtoCopyWith<StaffDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffDtoCopyWith<$Res> {
  factory $StaffDtoCopyWith(StaffDto value, $Res Function(StaffDto) then) =
      _$StaffDtoCopyWithImpl<$Res, StaffDto>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$StaffDtoCopyWithImpl<$Res, $Val extends StaffDto>
    implements $StaffDtoCopyWith<$Res> {
  _$StaffDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StaffDtoImplCopyWith<$Res>
    implements $StaffDtoCopyWith<$Res> {
  factory _$$StaffDtoImplCopyWith(
    _$StaffDtoImpl value,
    $Res Function(_$StaffDtoImpl) then,
  ) = __$$StaffDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$StaffDtoImplCopyWithImpl<$Res>
    extends _$StaffDtoCopyWithImpl<$Res, _$StaffDtoImpl>
    implements _$$StaffDtoImplCopyWith<$Res> {
  __$$StaffDtoImplCopyWithImpl(
    _$StaffDtoImpl _value,
    $Res Function(_$StaffDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StaffDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$StaffDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffDtoImpl implements _StaffDto {
  const _$StaffDtoImpl({required this.id, required this.name});

  factory _$StaffDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'StaffDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of StaffDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffDtoImplCopyWith<_$StaffDtoImpl> get copyWith =>
      __$$StaffDtoImplCopyWithImpl<_$StaffDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffDtoImplToJson(this);
  }
}

abstract class _StaffDto implements StaffDto {
  const factory _StaffDto({required final int id, required final String name}) =
      _$StaffDtoImpl;

  factory _StaffDto.fromJson(Map<String, dynamic> json) =
      _$StaffDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of StaffDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffDtoImplCopyWith<_$StaffDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
