import 'package:code_generator/model/auth.dart';
import 'package:code_generator/model/enum_json.dart';
import 'package:code_generator/model/first_action.dart';
import 'package:code_generator/model/walk_through.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model_json.g.dart';

@JsonSerializable(
  createFieldMap: true
)
class UserModel {
  UserModel({
    required this.id,
    required this.nickname,
    required this.code,
    this.profileUrl,
    required this.auth,
    required this.walkThrough,
    required this.firstActions,
  });

  @JsonKey(readValue: readValue)
  final String id;
  final String nickname;
  final String code;
  final String? profileUrl;
  final Auth auth;
  final WalkThrough walkThrough;
  final List<FirstAction> firstActions;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

Object? readValue(Map<dynamic, dynamic> map, String key) {
  return map['auth'][key];
}