// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardResponseImpl _$$RewardResponseImplFromJson(Map<String, dynamic> json) =>
    _$RewardResponseImpl(
      message: json['message'] as String?,
      data: RewardData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RewardResponseImplToJson(
  _$RewardResponseImpl instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};

_$RewardDataImpl _$$RewardDataImplFromJson(Map<String, dynamic> json) =>
    _$RewardDataImpl(
      rewards: (json['rewards'] as List<dynamic>)
          .map((e) => RewardItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RewardDataImplToJson(_$RewardDataImpl instance) =>
    <String, dynamic>{'rewards': instance.rewards};

_$RewardItemImpl _$$RewardItemImplFromJson(Map<String, dynamic> json) =>
    _$RewardItemImpl(
      id: (json['id'] as num).toInt(),
      title: json['name'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      points: (json['pointsRequired'] as num).toInt(),
      branch: Branch.fromJson(json['branch'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$RewardItemImplToJson(_$RewardItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'pointsRequired': instance.points,
      'branch': instance.branch,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$BranchImpl _$$BranchImplFromJson(Map<String, dynamic> json) =>
    _$BranchImpl(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$$BranchImplToJson(_$BranchImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
