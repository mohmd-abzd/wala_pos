// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RewardResponse _$RewardResponseFromJson(Map<String, dynamic> json) {
  return _RewardResponse.fromJson(json);
}

/// @nodoc
mixin _$RewardResponse {
  String? get message => throw _privateConstructorUsedError;
  RewardData get data => throw _privateConstructorUsedError;

  /// Serializes this RewardResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardResponseCopyWith<RewardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardResponseCopyWith<$Res> {
  factory $RewardResponseCopyWith(
    RewardResponse value,
    $Res Function(RewardResponse) then,
  ) = _$RewardResponseCopyWithImpl<$Res, RewardResponse>;
  @useResult
  $Res call({String? message, RewardData data});

  $RewardDataCopyWith<$Res> get data;
}

/// @nodoc
class _$RewardResponseCopyWithImpl<$Res, $Val extends RewardResponse>
    implements $RewardResponseCopyWith<$Res> {
  _$RewardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardResponse
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
                      as RewardData,
          )
          as $Val,
    );
  }

  /// Create a copy of RewardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RewardDataCopyWith<$Res> get data {
    return $RewardDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RewardResponseImplCopyWith<$Res>
    implements $RewardResponseCopyWith<$Res> {
  factory _$$RewardResponseImplCopyWith(
    _$RewardResponseImpl value,
    $Res Function(_$RewardResponseImpl) then,
  ) = __$$RewardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, RewardData data});

  @override
  $RewardDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$RewardResponseImplCopyWithImpl<$Res>
    extends _$RewardResponseCopyWithImpl<$Res, _$RewardResponseImpl>
    implements _$$RewardResponseImplCopyWith<$Res> {
  __$$RewardResponseImplCopyWithImpl(
    _$RewardResponseImpl _value,
    $Res Function(_$RewardResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RewardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed, Object? data = null}) {
    return _then(
      _$RewardResponseImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as RewardData,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardResponseImpl implements _RewardResponse {
  const _$RewardResponseImpl({this.message, required this.data});

  factory _$RewardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardResponseImplFromJson(json);

  @override
  final String? message;
  @override
  final RewardData data;

  @override
  String toString() {
    return 'RewardResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of RewardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardResponseImplCopyWith<_$RewardResponseImpl> get copyWith =>
      __$$RewardResponseImplCopyWithImpl<_$RewardResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardResponseImplToJson(this);
  }
}

abstract class _RewardResponse implements RewardResponse {
  const factory _RewardResponse({
    final String? message,
    required final RewardData data,
  }) = _$RewardResponseImpl;

  factory _RewardResponse.fromJson(Map<String, dynamic> json) =
      _$RewardResponseImpl.fromJson;

  @override
  String? get message;
  @override
  RewardData get data;

  /// Create a copy of RewardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardResponseImplCopyWith<_$RewardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RewardData _$RewardDataFromJson(Map<String, dynamic> json) {
  return _RewardData.fromJson(json);
}

/// @nodoc
mixin _$RewardData {
  List<RewardItem> get rewards => throw _privateConstructorUsedError;

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
  $Res call({List<RewardItem> rewards});
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
  $Res call({Object? rewards = null}) {
    return _then(
      _value.copyWith(
            rewards: null == rewards
                ? _value.rewards
                : rewards // ignore: cast_nullable_to_non_nullable
                      as List<RewardItem>,
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
  $Res call({List<RewardItem> rewards});
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
  $Res call({Object? rewards = null}) {
    return _then(
      _$RewardDataImpl(
        rewards: null == rewards
            ? _value._rewards
            : rewards // ignore: cast_nullable_to_non_nullable
                  as List<RewardItem>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardDataImpl implements _RewardData {
  const _$RewardDataImpl({required final List<RewardItem> rewards})
    : _rewards = rewards;

  factory _$RewardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardDataImplFromJson(json);

  final List<RewardItem> _rewards;
  @override
  List<RewardItem> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  String toString() {
    return 'RewardData(rewards: $rewards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardDataImpl &&
            const DeepCollectionEquality().equals(other._rewards, _rewards));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rewards));

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
  const factory _RewardData({required final List<RewardItem> rewards}) =
      _$RewardDataImpl;

  factory _RewardData.fromJson(Map<String, dynamic> json) =
      _$RewardDataImpl.fromJson;

  @override
  List<RewardItem> get rewards;

  /// Create a copy of RewardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardDataImplCopyWith<_$RewardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RewardItem _$RewardItemFromJson(Map<String, dynamic> json) {
  return _RewardItem.fromJson(json);
}

/// @nodoc
mixin _$RewardItem {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'pointsRequired')
  int get points => throw _privateConstructorUsedError;
  Branch get branch => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this RewardItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RewardItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RewardItemCopyWith<RewardItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardItemCopyWith<$Res> {
  factory $RewardItemCopyWith(
    RewardItem value,
    $Res Function(RewardItem) then,
  ) = _$RewardItemCopyWithImpl<$Res, RewardItem>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'name') String title,
    String? description,
    String? imageUrl,
    @JsonKey(name: 'pointsRequired') int points,
    Branch branch,
    DateTime? createdAt,
  });

  $BranchCopyWith<$Res> get branch;
}

/// @nodoc
class _$RewardItemCopyWithImpl<$Res, $Val extends RewardItem>
    implements $RewardItemCopyWith<$Res> {
  _$RewardItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? points = null,
    Object? branch = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            points: null == points
                ? _value.points
                : points // ignore: cast_nullable_to_non_nullable
                      as int,
            branch: null == branch
                ? _value.branch
                : branch // ignore: cast_nullable_to_non_nullable
                      as Branch,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of RewardItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BranchCopyWith<$Res> get branch {
    return $BranchCopyWith<$Res>(_value.branch, (value) {
      return _then(_value.copyWith(branch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RewardItemImplCopyWith<$Res>
    implements $RewardItemCopyWith<$Res> {
  factory _$$RewardItemImplCopyWith(
    _$RewardItemImpl value,
    $Res Function(_$RewardItemImpl) then,
  ) = __$$RewardItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'name') String title,
    String? description,
    String? imageUrl,
    @JsonKey(name: 'pointsRequired') int points,
    Branch branch,
    DateTime? createdAt,
  });

  @override
  $BranchCopyWith<$Res> get branch;
}

/// @nodoc
class __$$RewardItemImplCopyWithImpl<$Res>
    extends _$RewardItemCopyWithImpl<$Res, _$RewardItemImpl>
    implements _$$RewardItemImplCopyWith<$Res> {
  __$$RewardItemImplCopyWithImpl(
    _$RewardItemImpl _value,
    $Res Function(_$RewardItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RewardItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? points = null,
    Object? branch = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$RewardItemImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        points: null == points
            ? _value.points
            : points // ignore: cast_nullable_to_non_nullable
                  as int,
        branch: null == branch
            ? _value.branch
            : branch // ignore: cast_nullable_to_non_nullable
                  as Branch,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardItemImpl implements _RewardItem {
  const _$RewardItemImpl({
    required this.id,
    @JsonKey(name: 'name') required this.title,
    this.description,
    this.imageUrl,
    @JsonKey(name: 'pointsRequired') required this.points,
    required this.branch,
    this.createdAt,
  });

  factory _$RewardItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardItemImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'name')
  final String title;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  @JsonKey(name: 'pointsRequired')
  final int points;
  @override
  final Branch branch;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'RewardItem(id: $id, title: $title, description: $description, imageUrl: $imageUrl, points: $points, branch: $branch, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    imageUrl,
    points,
    branch,
    createdAt,
  );

  /// Create a copy of RewardItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardItemImplCopyWith<_$RewardItemImpl> get copyWith =>
      __$$RewardItemImplCopyWithImpl<_$RewardItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardItemImplToJson(this);
  }
}

abstract class _RewardItem implements RewardItem {
  const factory _RewardItem({
    required final int id,
    @JsonKey(name: 'name') required final String title,
    final String? description,
    final String? imageUrl,
    @JsonKey(name: 'pointsRequired') required final int points,
    required final Branch branch,
    final DateTime? createdAt,
  }) = _$RewardItemImpl;

  factory _RewardItem.fromJson(Map<String, dynamic> json) =
      _$RewardItemImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'name')
  String get title;
  @override
  String? get description;
  @override
  String? get imageUrl;
  @override
  @JsonKey(name: 'pointsRequired')
  int get points;
  @override
  Branch get branch;
  @override
  DateTime? get createdAt;

  /// Create a copy of RewardItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardItemImplCopyWith<_$RewardItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return _Branch.fromJson(json);
}

/// @nodoc
mixin _$Branch {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Branch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchCopyWith<Branch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchCopyWith<$Res> {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) then) =
      _$BranchCopyWithImpl<$Res, Branch>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$BranchCopyWithImpl<$Res, $Val extends Branch>
    implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Branch
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
abstract class _$$BranchImplCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$$BranchImplCopyWith(
    _$BranchImpl value,
    $Res Function(_$BranchImpl) then,
  ) = __$$BranchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$BranchImplCopyWithImpl<$Res>
    extends _$BranchCopyWithImpl<$Res, _$BranchImpl>
    implements _$$BranchImplCopyWith<$Res> {
  __$$BranchImplCopyWithImpl(
    _$BranchImpl _value,
    $Res Function(_$BranchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$BranchImpl(
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
class _$BranchImpl implements _Branch {
  const _$BranchImpl({required this.id, required this.name});

  factory _$BranchImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Branch(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      __$$BranchImplCopyWithImpl<_$BranchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchImplToJson(this);
  }
}

abstract class _Branch implements Branch {
  const factory _Branch({required final int id, required final String name}) =
      _$BranchImpl;

  factory _Branch.fromJson(Map<String, dynamic> json) = _$BranchImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of Branch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchImplCopyWith<_$BranchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
