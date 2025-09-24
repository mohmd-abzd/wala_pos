// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RewardItem _$RewardItemFromJson(Map<String, dynamic> json) {
  return _RewardItem.fromJson(json);
}

/// @nodoc
mixin _$RewardItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int get pointsRequired => throw _privateConstructorUsedError;
  bool get redeemable => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

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
    String name,
    String? description,
    String? imageUrl,
    int pointsRequired,
    bool redeemable,
    String createdAt,
  });
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
    Object? name = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? pointsRequired = null,
    Object? redeemable = null,
    Object? createdAt = null,
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
            redeemable: null == redeemable
                ? _value.redeemable
                : redeemable // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
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
    String name,
    String? description,
    String? imageUrl,
    int pointsRequired,
    bool redeemable,
    String createdAt,
  });
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
    Object? name = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? pointsRequired = null,
    Object? redeemable = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$RewardItemImpl(
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
        redeemable: null == redeemable
            ? _value.redeemable
            : redeemable // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardItemImpl implements _RewardItem {
  _$RewardItemImpl({
    required this.id,
    required this.name,
    this.description,
    this.imageUrl,
    required this.pointsRequired,
    required this.redeemable,
    required this.createdAt,
  });

  factory _$RewardItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardItemImplFromJson(json);

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
  final bool redeemable;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'RewardItem(id: $id, name: $name, description: $description, imageUrl: $imageUrl, pointsRequired: $pointsRequired, redeemable: $redeemable, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.pointsRequired, pointsRequired) ||
                other.pointsRequired == pointsRequired) &&
            (identical(other.redeemable, redeemable) ||
                other.redeemable == redeemable) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
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
    redeemable,
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
  factory _RewardItem({
    required final int id,
    required final String name,
    final String? description,
    final String? imageUrl,
    required final int pointsRequired,
    required final bool redeemable,
    required final String createdAt,
  }) = _$RewardItemImpl;

  factory _RewardItem.fromJson(Map<String, dynamic> json) =
      _$RewardItemImpl.fromJson;

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
  bool get redeemable;
  @override
  String get createdAt;

  /// Create a copy of RewardItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RewardItemImplCopyWith<_$RewardItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
