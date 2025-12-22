// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  @JsonKey(name: "data")
  LoginData get data => throw _privateConstructorUsedError;

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
    LoginResponse value,
    $Res Function(LoginResponse) then,
  ) = _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call({@JsonKey(name: "data") LoginData data});

  $LoginDataCopyWith<$Res> get data;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _value.copyWith(
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as LoginData,
          )
          as $Val,
    );
  }

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginDataCopyWith<$Res> get data {
    return $LoginDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseImplCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$LoginResponseImplCopyWith(
    _$LoginResponseImpl value,
    $Res Function(_$LoginResponseImpl) then,
  ) = __$$LoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") LoginData data});

  @override
  $LoginDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoginResponseImplCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$LoginResponseImpl>
    implements _$$LoginResponseImplCopyWith<$Res> {
  __$$LoginResponseImplCopyWithImpl(
    _$LoginResponseImpl _value,
    $Res Function(_$LoginResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$LoginResponseImpl(
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as LoginData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseImpl implements _LoginResponse {
  const _$LoginResponseImpl({@JsonKey(name: "data") required this.data});

  factory _$LoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final LoginData data;

  @override
  String toString() {
    return 'LoginResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      __$$LoginResponseImplCopyWithImpl<_$LoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseImplToJson(this);
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse({
    @JsonKey(name: "data") required final LoginData data,
  }) = _$LoginResponseImpl;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$LoginResponseImpl.fromJson;

  @override
  @JsonKey(name: "data")
  LoginData get data;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginData _$LoginDataFromJson(Map<String, dynamic> json) {
  return _LoginData.fromJson(json);
}

/// @nodoc
mixin _$LoginData {
  @JsonKey(name: "accessToken")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refreshToken")
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: "profile")
  Profile get profile => throw _privateConstructorUsedError;

  /// Serializes this LoginData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginDataCopyWith<LoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataCopyWith<$Res> {
  factory $LoginDataCopyWith(LoginData value, $Res Function(LoginData) then) =
      _$LoginDataCopyWithImpl<$Res, LoginData>;
  @useResult
  $Res call({
    @JsonKey(name: "accessToken") String accessToken,
    @JsonKey(name: "refreshToken") String refreshToken,
    @JsonKey(name: "profile") Profile profile,
  });

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class _$LoginDataCopyWithImpl<$Res, $Val extends LoginData>
    implements $LoginDataCopyWith<$Res> {
  _$LoginDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? profile = null,
  }) {
    return _then(
      _value.copyWith(
            accessToken: null == accessToken
                ? _value.accessToken
                : accessToken // ignore: cast_nullable_to_non_nullable
                      as String,
            refreshToken: null == refreshToken
                ? _value.refreshToken
                : refreshToken // ignore: cast_nullable_to_non_nullable
                      as String,
            profile: null == profile
                ? _value.profile
                : profile // ignore: cast_nullable_to_non_nullable
                      as Profile,
          )
          as $Val,
    );
  }

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginDataImplCopyWith<$Res>
    implements $LoginDataCopyWith<$Res> {
  factory _$$LoginDataImplCopyWith(
    _$LoginDataImpl value,
    $Res Function(_$LoginDataImpl) then,
  ) = __$$LoginDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "accessToken") String accessToken,
    @JsonKey(name: "refreshToken") String refreshToken,
    @JsonKey(name: "profile") Profile profile,
  });

  @override
  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$$LoginDataImplCopyWithImpl<$Res>
    extends _$LoginDataCopyWithImpl<$Res, _$LoginDataImpl>
    implements _$$LoginDataImplCopyWith<$Res> {
  __$$LoginDataImplCopyWithImpl(
    _$LoginDataImpl _value,
    $Res Function(_$LoginDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? profile = null,
  }) {
    return _then(
      _$LoginDataImpl(
        accessToken: null == accessToken
            ? _value.accessToken
            : accessToken // ignore: cast_nullable_to_non_nullable
                  as String,
        refreshToken: null == refreshToken
            ? _value.refreshToken
            : refreshToken // ignore: cast_nullable_to_non_nullable
                  as String,
        profile: null == profile
            ? _value.profile
            : profile // ignore: cast_nullable_to_non_nullable
                  as Profile,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDataImpl implements _LoginData {
  const _$LoginDataImpl({
    @JsonKey(name: "accessToken") required this.accessToken,
    @JsonKey(name: "refreshToken") required this.refreshToken,
    @JsonKey(name: "profile") required this.profile,
  });

  factory _$LoginDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDataImplFromJson(json);

  @override
  @JsonKey(name: "accessToken")
  final String accessToken;
  @override
  @JsonKey(name: "refreshToken")
  final String refreshToken;
  @override
  @JsonKey(name: "profile")
  final Profile profile;

  @override
  String toString() {
    return 'LoginData(accessToken: $accessToken, refreshToken: $refreshToken, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, profile);

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      __$$LoginDataImplCopyWithImpl<_$LoginDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDataImplToJson(this);
  }
}

abstract class _LoginData implements LoginData {
  const factory _LoginData({
    @JsonKey(name: "accessToken") required final String accessToken,
    @JsonKey(name: "refreshToken") required final String refreshToken,
    @JsonKey(name: "profile") required final Profile profile,
  }) = _$LoginDataImpl;

  factory _LoginData.fromJson(Map<String, dynamic> json) =
      _$LoginDataImpl.fromJson;

  @override
  @JsonKey(name: "accessToken")
  String get accessToken;
  @override
  @JsonKey(name: "refreshToken")
  String get refreshToken;
  @override
  @JsonKey(name: "profile")
  Profile get profile;

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  int get merchantId => throw _privateConstructorUsedError;
  String get merchantName => throw _privateConstructorUsedError;
  String? get merchantLogo => throw _privateConstructorUsedError;
  int get branchId => throw _privateConstructorUsedError;
  String get branchName => throw _privateConstructorUsedError;
  String? get merchantType => throw _privateConstructorUsedError;
  double? get pointsRate => throw _privateConstructorUsedError;
  int? get maxPoints => throw _privateConstructorUsedError;

  /// Serializes this Profile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call({
    int id,
    String name,
    String username,
    String phoneNumber,
    int merchantId,
    String merchantName,
    String? merchantLogo,
    int branchId,
    String branchName,
    String? merchantType,
    double? pointsRate,
    int? maxPoints,
  });
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? phoneNumber = null,
    Object? merchantId = null,
    Object? merchantName = null,
    Object? merchantLogo = freezed,
    Object? branchId = null,
    Object? branchName = null,
    Object? merchantType = freezed,
    Object? pointsRate = freezed,
    Object? maxPoints = freezed,
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
            username: null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            merchantId: null == merchantId
                ? _value.merchantId
                : merchantId // ignore: cast_nullable_to_non_nullable
                      as int,
            merchantName: null == merchantName
                ? _value.merchantName
                : merchantName // ignore: cast_nullable_to_non_nullable
                      as String,
            merchantLogo: freezed == merchantLogo
                ? _value.merchantLogo
                : merchantLogo // ignore: cast_nullable_to_non_nullable
                      as String?,
            branchId: null == branchId
                ? _value.branchId
                : branchId // ignore: cast_nullable_to_non_nullable
                      as int,
            branchName: null == branchName
                ? _value.branchName
                : branchName // ignore: cast_nullable_to_non_nullable
                      as String,
            merchantType: freezed == merchantType
                ? _value.merchantType
                : merchantType // ignore: cast_nullable_to_non_nullable
                      as String?,
            pointsRate: freezed == pointsRate
                ? _value.pointsRate
                : pointsRate // ignore: cast_nullable_to_non_nullable
                      as double?,
            maxPoints: freezed == maxPoints
                ? _value.maxPoints
                : maxPoints // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
    _$ProfileImpl value,
    $Res Function(_$ProfileImpl) then,
  ) = __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String username,
    String phoneNumber,
    int merchantId,
    String merchantName,
    String? merchantLogo,
    int branchId,
    String branchName,
    String? merchantType,
    double? pointsRate,
    int? maxPoints,
  });
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
    _$ProfileImpl _value,
    $Res Function(_$ProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? phoneNumber = null,
    Object? merchantId = null,
    Object? merchantName = null,
    Object? merchantLogo = freezed,
    Object? branchId = null,
    Object? branchName = null,
    Object? merchantType = freezed,
    Object? pointsRate = freezed,
    Object? maxPoints = freezed,
  }) {
    return _then(
      _$ProfileImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        username: null == username
            ? _value.username
            : username // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        merchantId: null == merchantId
            ? _value.merchantId
            : merchantId // ignore: cast_nullable_to_non_nullable
                  as int,
        merchantName: null == merchantName
            ? _value.merchantName
            : merchantName // ignore: cast_nullable_to_non_nullable
                  as String,
        merchantLogo: freezed == merchantLogo
            ? _value.merchantLogo
            : merchantLogo // ignore: cast_nullable_to_non_nullable
                  as String?,
        branchId: null == branchId
            ? _value.branchId
            : branchId // ignore: cast_nullable_to_non_nullable
                  as int,
        branchName: null == branchName
            ? _value.branchName
            : branchName // ignore: cast_nullable_to_non_nullable
                  as String,
        merchantType: freezed == merchantType
            ? _value.merchantType
            : merchantType // ignore: cast_nullable_to_non_nullable
                  as String?,
        pointsRate: freezed == pointsRate
            ? _value.pointsRate
            : pointsRate // ignore: cast_nullable_to_non_nullable
                  as double?,
        maxPoints: freezed == maxPoints
            ? _value.maxPoints
            : maxPoints // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl implements _Profile {
  const _$ProfileImpl({
    required this.id,
    required this.name,
    required this.username,
    required this.phoneNumber,
    required this.merchantId,
    required this.merchantName,
    this.merchantLogo,
    required this.branchId,
    required this.branchName,
    this.merchantType,
    this.pointsRate,
    this.maxPoints,
  });

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String phoneNumber;
  @override
  final int merchantId;
  @override
  final String merchantName;
  @override
  final String? merchantLogo;
  @override
  final int branchId;
  @override
  final String branchName;
  @override
  final String? merchantType;
  @override
  final double? pointsRate;
  @override
  final int? maxPoints;

  @override
  String toString() {
    return 'Profile(id: $id, name: $name, username: $username, phoneNumber: $phoneNumber, merchantId: $merchantId, merchantName: $merchantName, merchantLogo: $merchantLogo, branchId: $branchId, branchName: $branchName, merchantType: $merchantType, pointsRate: $pointsRate, maxPoints: $maxPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            (identical(other.merchantName, merchantName) ||
                other.merchantName == merchantName) &&
            (identical(other.merchantLogo, merchantLogo) ||
                other.merchantLogo == merchantLogo) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName) &&
            (identical(other.merchantType, merchantType) ||
                other.merchantType == merchantType) &&
            (identical(other.pointsRate, pointsRate) ||
                other.pointsRate == pointsRate) &&
            (identical(other.maxPoints, maxPoints) ||
                other.maxPoints == maxPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    username,
    phoneNumber,
    merchantId,
    merchantName,
    merchantLogo,
    branchId,
    branchName,
    merchantType,
    pointsRate,
    maxPoints,
  );

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImplToJson(this);
  }
}

abstract class _Profile implements Profile {
  const factory _Profile({
    required final int id,
    required final String name,
    required final String username,
    required final String phoneNumber,
    required final int merchantId,
    required final String merchantName,
    final String? merchantLogo,
    required final int branchId,
    required final String branchName,
    final String? merchantType,
    final double? pointsRate,
    final int? maxPoints,
  }) = _$ProfileImpl;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get phoneNumber;
  @override
  int get merchantId;
  @override
  String get merchantName;
  @override
  String? get merchantLogo;
  @override
  int get branchId;
  @override
  String get branchName;
  @override
  String? get merchantType;
  @override
  double? get pointsRate;
  @override
  int? get maxPoints;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
