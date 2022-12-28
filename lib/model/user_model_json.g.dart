// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: readValue(json, 'id') as String,
      nickname: json['nickname'] as String,
      code: json['code'] as String,
      profileUrl: json['profileUrl'] as String?,
      auth: Auth.fromJson(json['auth'] as Map<String, dynamic>),
      walkThrough:
          WalkThrough.fromJson(json['walkThrough'] as Map<String, dynamic>),
      firstActions: (json['firstActions'] as List<dynamic>)
          .map((e) => FirstAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

const _$UserModelFieldMap = <String, String>{
  'id': 'id',
  'nickname': 'nickname',
  'code': 'code',
  'profileUrl': 'profileUrl',
  'auth': 'auth',
  'walkThrough': 'walkThrough',
  'firstActions': 'firstActions',
};

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'code': instance.code,
      'profileUrl': instance.profileUrl,
      'auth': instance.auth,
      'walkThrough': instance.walkThrough,
      'firstActions': instance.firstActions,
    };
