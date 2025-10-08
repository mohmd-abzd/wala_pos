// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerResponse _$CustomerResponseFromJson(Map<String, dynamic> json) {
  return _CustomerResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomerResponse {
  @JsonKey(name: 'data')
  CustomerData get data => throw _privateConstructorUsedError;

  /// Serializes this CustomerResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerResponseCopyWith<CustomerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerResponseCopyWith<$Res> {
  factory $CustomerResponseCopyWith(
    CustomerResponse value,
    $Res Function(CustomerResponse) then,
  ) = _$CustomerResponseCopyWithImpl<$Res, CustomerResponse>;
  @useResult
  $Res call({@JsonKey(name: 'data') CustomerData data});

  $CustomerDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CustomerResponseCopyWithImpl<$Res, $Val extends CustomerResponse>
    implements $CustomerResponseCopyWith<$Res> {
  _$CustomerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _value.copyWith(
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as CustomerData,
          )
          as $Val,
    );
  }

  /// Create a copy of CustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerDataCopyWith<$Res> get data {
    return $CustomerDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerResponseImplCopyWith<$Res>
    implements $CustomerResponseCopyWith<$Res> {
  factory _$$CustomerResponseImplCopyWith(
    _$CustomerResponseImpl value,
    $Res Function(_$CustomerResponseImpl) then,
  ) = __$$CustomerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') CustomerData data});

  @override
  $CustomerDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$CustomerResponseImplCopyWithImpl<$Res>
    extends _$CustomerResponseCopyWithImpl<$Res, _$CustomerResponseImpl>
    implements _$$CustomerResponseImplCopyWith<$Res> {
  __$$CustomerResponseImplCopyWithImpl(
    _$CustomerResponseImpl _value,
    $Res Function(_$CustomerResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$CustomerResponseImpl(
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as CustomerData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerResponseImpl implements _CustomerResponse {
  const _$CustomerResponseImpl({@JsonKey(name: 'data') required this.data});

  factory _$CustomerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerResponseImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final CustomerData data;

  @override
  String toString() {
    return 'CustomerResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerResponseImplCopyWith<_$CustomerResponseImpl> get copyWith =>
      __$$CustomerResponseImplCopyWithImpl<_$CustomerResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerResponseImplToJson(this);
  }
}

abstract class _CustomerResponse implements CustomerResponse {
  const factory _CustomerResponse({
    @JsonKey(name: 'data') required final CustomerData data,
  }) = _$CustomerResponseImpl;

  factory _CustomerResponse.fromJson(Map<String, dynamic> json) =
      _$CustomerResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  CustomerData get data;

  /// Create a copy of CustomerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerResponseImplCopyWith<_$CustomerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerData _$CustomerDataFromJson(Map<String, dynamic> json) {
  return _CustomerData.fromJson(json);
}

/// @nodoc
mixin _$CustomerData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get totalPoints => throw _privateConstructorUsedError;
  List<RewardData> get rewards => throw _privateConstructorUsedError;

  /// Serializes this CustomerData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerDataCopyWith<CustomerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDataCopyWith<$Res> {
  factory $CustomerDataCopyWith(
    CustomerData value,
    $Res Function(CustomerData) then,
  ) = _$CustomerDataCopyWithImpl<$Res, CustomerData>;
  @useResult
  $Res call({
    int id,
    String name,
    String phoneNumber,
    String email,
    int totalPoints,
    List<RewardData> rewards,
  });
}

/// @nodoc
class _$CustomerDataCopyWithImpl<$Res, $Val extends CustomerData>
    implements $CustomerDataCopyWith<$Res> {
  _$CustomerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? totalPoints = null,
    Object? rewards = null,
  }) {
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
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            totalPoints: null == totalPoints
                ? _value.totalPoints
                : totalPoints // ignore: cast_nullable_to_non_nullable
                      as int,
            rewards: null == rewards
                ? _value.rewards
                : rewards // ignore: cast_nullable_to_non_nullable
                      as List<RewardData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerDataImplCopyWith<$Res>
    implements $CustomerDataCopyWith<$Res> {
  factory _$$CustomerDataImplCopyWith(
    _$CustomerDataImpl value,
    $Res Function(_$CustomerDataImpl) then,
  ) = __$$CustomerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String phoneNumber,
    String email,
    int totalPoints,
    List<RewardData> rewards,
  });
}

/// @nodoc
class __$$CustomerDataImplCopyWithImpl<$Res>
    extends _$CustomerDataCopyWithImpl<$Res, _$CustomerDataImpl>
    implements _$$CustomerDataImplCopyWith<$Res> {
  __$$CustomerDataImplCopyWithImpl(
    _$CustomerDataImpl _value,
    $Res Function(_$CustomerDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? totalPoints = null,
    Object? rewards = null,
  }) {
    return _then(
      _$CustomerDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        totalPoints: null == totalPoints
            ? _value.totalPoints
            : totalPoints // ignore: cast_nullable_to_non_nullable
                  as int,
        rewards: null == rewards
            ? _value._rewards
            : rewards // ignore: cast_nullable_to_non_nullable
                  as List<RewardData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerDataImpl implements _CustomerData {
  const _$CustomerDataImpl({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.totalPoints,
    required final List<RewardData> rewards,
  }) : _rewards = rewards;

  factory _$CustomerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerDataImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final int totalPoints;
  final List<RewardData> _rewards;
  @override
  List<RewardData> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  String toString() {
    return 'CustomerData(id: $id, name: $name, phoneNumber: $phoneNumber, email: $email, totalPoints: $totalPoints, rewards: $rewards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.totalPoints, totalPoints) ||
                other.totalPoints == totalPoints) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    phoneNumber,
    email,
    totalPoints,
    const DeepCollectionEquality().hash(_rewards),
  );

  /// Create a copy of CustomerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDataImplCopyWith<_$CustomerDataImpl> get copyWith =>
      __$$CustomerDataImplCopyWithImpl<_$CustomerDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerDataImplToJson(this);
  }
}

abstract class _CustomerData implements CustomerData {
  const factory _CustomerData({
    required final int id,
    required final String name,
    required final String phoneNumber,
    required final String email,
    required final int totalPoints,
    required final List<RewardData> rewards,
  }) = _$CustomerDataImpl;

  factory _CustomerData.fromJson(Map<String, dynamic> json) =
      _$CustomerDataImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  int get totalPoints;
  @override
  List<RewardData> get rewards;

  /// Create a copy of CustomerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerDataImplCopyWith<_$CustomerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RewardData _$RewardDataFromJson(Map<String, dynamic> json) {
  return _RewardData.fromJson(json);
}

/// @nodoc
mixin _$RewardData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int get pointsRequired => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  bool get redeemable => throw _privateConstructorUsedError;

  /// Serializes this RewardData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardDataCopyWith<RewardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardDataCopyWith<$Res> {
  factory $RewardDataCopyWith(
    RewardData value,
    $Res Function(RewardData) then,
  ) = _$RewardDataCopyWithImpl<$Res, RewardData>;
  @useResult
  $Res call({
    int id,
    String name,
    String? description,
    String? imageUrl,
    int pointsRequired,
    String createdAt,
    bool redeemable,
  });
}

/// @nodoc
class _$RewardDataCopyWithImpl<$Res, $Val extends RewardData>
    implements $RewardDataCopyWith<$Res> {
  _$RewardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? pointsRequired = null,
    Object? createdAt = null,
    Object? redeemable = null,
  }) {
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
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            pointsRequired: null == pointsRequired
                ? _value.pointsRequired
                : pointsRequired // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            redeemable: null == redeemable
                ? _value.redeemable
                : redeemable // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RewardDataImplCopyWith<$Res>
    implements $RewardDataCopyWith<$Res> {
  factory _$$RewardDataImplCopyWith(
    _$RewardDataImpl value,
    $Res Function(_$RewardDataImpl) then,
  ) = __$$RewardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String? description,
    String? imageUrl,
    int pointsRequired,
    String createdAt,
    bool redeemable,
  });
}

/// @nodoc
class __$$RewardDataImplCopyWithImpl<$Res>
    extends _$RewardDataCopyWithImpl<$Res, _$RewardDataImpl>
    implements _$$RewardDataImplCopyWith<$Res> {
  __$$RewardDataImplCopyWithImpl(
    _$RewardDataImpl _value,
    $Res Function(_$RewardDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RewardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? pointsRequired = null,
    Object? createdAt = null,
    Object? redeemable = null,
  }) {
    return _then(
      _$RewardDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        pointsRequired: null == pointsRequired
            ? _value.pointsRequired
            : pointsRequired // ignore: cast_nullable_to_non_nullable
                  as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        redeemable: null == redeemable
            ? _value.redeemable
            : redeemable // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardDataImpl implements _RewardData {
  const _$RewardDataImpl({
    required this.id,
    required this.name,
    this.description,
    this.imageUrl,
    required this.pointsRequired,
    required this.createdAt,
    required this.redeemable,
  });

  factory _$RewardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardDataImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final int pointsRequired;
  @override
  final String createdAt;
  @override
  final bool redeemable;

  @override
  String toString() {
    return 'RewardData(id: $id, name: $name, description: $description, imageUrl: $imageUrl, pointsRequired: $pointsRequired, createdAt: $createdAt, redeemable: $redeemable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.pointsRequired, pointsRequired) ||
                other.pointsRequired == pointsRequired) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.redeemable, redeemable) ||
                other.redeemable == redeemable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    imageUrl,
    pointsRequired,
    createdAt,
    redeemable,
  );

  /// Create a copy of RewardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardDataImplCopyWith<_$RewardDataImpl> get copyWith =>
      __$$RewardDataImplCopyWithImpl<_$RewardDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardDataImplToJson(this);
  }
}

abstract class _RewardData implements RewardData {
  const factory _RewardData({
    required final int id,
    required final String name,
    final String? description,
    final String? imageUrl,
    required final int pointsRequired,
    required final String createdAt,
    required final bool redeemable,
  }) = _$RewardDataImpl;

  factory _RewardData.fromJson(Map<String, dynamic> json) =
      _$RewardDataImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get imageUrl;
  @override
  int get pointsRequired;
  @override
  String get createdAt;
  @override
  bool get redeemable;

  /// Create a copy of RewardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardDataImplCopyWith<_$RewardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
