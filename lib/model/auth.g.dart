// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Auth _$AuthFromJson(Map<String, dynamic> json) => Auth(
      isAuth: json['isAuth'] as bool,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      gender: $enumDecodeNullable(_$ChallengeGenderEnumMap, json['gender']),
    );

Map<String, dynamic> _$AuthToJson(Auth instance) => <String, dynamic>{
      'isAuth': instance.isAuth,
      'birthday': instance.birthday?.toIso8601String(),
      'gender': _$ChallengeGenderEnumMap[instance.gender],
    };

const _$ChallengeGenderEnumMap = {
  ChallengeGender.MALE: '남성',
  ChallengeGender.FEMALE: '여성',
  ChallengeGender.NONE: '무관',
};
