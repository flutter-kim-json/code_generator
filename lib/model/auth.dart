import 'package:code_generator/model/enum_json.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth.g.dart';

@JsonSerializable()
class Auth {
  Auth({
    required this.isAuth,
    required this.birthday,
    required this.gender,
  });

  final bool isAuth;
  final DateTime? birthday;
  final ChallengeGender? gender;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);

  Map<String, dynamic> toJson() => _$AuthToJson(this);
}