// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      data: LoginData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{'data': instance.data};

_$LoginDataImpl _$$LoginDataImplFromJson(Map<String, dynamic> json) =>
    _$LoginDataImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      profile: Profile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginDataImplToJson(_$LoginDataImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'profile': instance.profile,
    };

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      username: json['username'] as String,
      phoneNumber: json['phoneNumber'] as String,
      merchantId: (json['merchantId'] as num).toInt(),
      merchantName: json['merchantName'] as String,
      merchantLogo: json['merchantLogo'] as String?,
      branchId: (json['branchId'] as num).toInt(),
      branchName: json['branchName'] as String,
      merchantType: json['merchantType'] as String?,
      pointsRate: (json['pointsRate'] as num?)?.toDouble(),
      maxPoints: (json['maxPoints'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'phoneNumber': instance.phoneNumber,
      'merchantId': instance.merchantId,
      'merchantName': instance.merchantName,
      'merchantLogo': instance.merchantLogo,
      'branchId': instance.branchId,
      'branchName': instance.branchName,
      'merchantType': instance.merchantType,
      'pointsRate': instance.pointsRate,
      'maxPoints': instance.maxPoints,
    };
