// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerCard _$CustomerCardFromJson(Map<String, dynamic> json) {
  return _CustomerCard.fromJson(json);
}

/// @nodoc
mixin _$CustomerCard {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get totalPoints => throw _privateConstructorUsedError;

  /// Serializes this CustomerCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerCardCopyWith<CustomerCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCardCopyWith<$Res> {
  factory $CustomerCardCopyWith(
    CustomerCard value,
    $Res Function(CustomerCard) then,
  ) = _$CustomerCardCopyWithImpl<$Res, CustomerCard>;
  @useResult
  $Res call({
    int id,
    String name,
    String phoneNumber,
    String email,
    int totalPoints,
  });
}

/// @nodoc
class _$CustomerCardCopyWithImpl<$Res, $Val extends CustomerCard>
    implements $CustomerCardCopyWith<$Res> {
  _$CustomerCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? totalPoints = null,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerCardImplCopyWith<$Res>
    implements $CustomerCardCopyWith<$Res> {
  factory _$$CustomerCardImplCopyWith(
    _$CustomerCardImpl value,
    $Res Function(_$CustomerCardImpl) then,
  ) = __$$CustomerCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String phoneNumber,
    String email,
    int totalPoints,
  });
}

/// @nodoc
class __$$CustomerCardImplCopyWithImpl<$Res>
    extends _$CustomerCardCopyWithImpl<$Res, _$CustomerCardImpl>
    implements _$$CustomerCardImplCopyWith<$Res> {
  __$$CustomerCardImplCopyWithImpl(
    _$CustomerCardImpl _value,
    $Res Function(_$CustomerCardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CustomerCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? totalPoints = null,
  }) {
    return _then(
      _$CustomerCardImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerCardImpl implements _CustomerCard {
  _$CustomerCardImpl({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.totalPoints,
  });

  factory _$CustomerCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerCardImplFromJson(json);

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

  @override
  String toString() {
    return 'CustomerCard(id: $id, name: $name, phoneNumber: $phoneNumber, email: $email, totalPoints: $totalPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.totalPoints, totalPoints) ||
                other.totalPoints == totalPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, phoneNumber, email, totalPoints);

  /// Create a copy of CustomerCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerCardImplCopyWith<_$CustomerCardImpl> get copyWith =>
      __$$CustomerCardImplCopyWithImpl<_$CustomerCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerCardImplToJson(this);
  }
}

abstract class _CustomerCard implements CustomerCard {
  factory _CustomerCard({
    required final int id,
    required final String name,
    required final String phoneNumber,
    required final String email,
    required final int totalPoints,
  }) = _$CustomerCardImpl;

  factory _CustomerCard.fromJson(Map<String, dynamic> json) =
      _$CustomerCardImpl.fromJson;

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

  /// Create a copy of CustomerCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerCardImplCopyWith<_$CustomerCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
