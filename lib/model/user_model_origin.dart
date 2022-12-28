import 'package:code_generator/model/enum.dart';

class UserModel {
  UserModel({
    required this.id,
    required this.nickname,
    this.profileUrl,
    this.code,
    required this.isAuth,
    this.birthday,
    this.gender,
    required this.completeTutorial,
    required this.completeWalkThrough,
    required this.completeFirstChat,
    this.interestCategory,
  });

  final String id;
  final String nickname;
  final String? profileUrl;
  final String? code;
  final bool isAuth;
  final DateTime? birthday;
  final ChallengeGender? gender;
  final bool completeTutorial;
  final bool completeWalkThrough;
  final String? interestCategory;
  final bool completeFirstChat;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json["id"] as String,
      nickname: json["nickname"] as String,
      profileUrl:
          json["profileUrl"] != null ? json["profileUrl"] as String : null,
      code: json["code"] as String,
      isAuth: json["isAuth"] as bool,
      birthday:
          json["birthday"] != null ? DateTime.tryParse(json["birthday"]) : null,
      gender: json["gender"] != null
          ? ChallengeGender.fromString(json["gender"])
          : ChallengeGender.NONE,
      completeTutorial: json["completeTutorial"] as bool,
      completeWalkThrough: json["completeWalkThrough"] as bool,
      completeFirstChat: json["completeFirstChat"] != null
          ? json["completeFirstChat"] as bool
          : true,
      interestCategory:
          json["interestCategory"] == null || json["interestCategory"] == ''
              ? null
              : json["interestCategory"] as String);

  Map<String, dynamic> toJson() => {
        "id": id,
        "nickname": nickname,
        "profileUrl": profileUrl,
        "code": code,
        "isAuth": isAuth,
        "birthday": birthday?.toIso8601String(),
        "gender": gender,
        "completeTutorial": completeTutorial,
        "completeWalkThrough": completeWalkThrough,
        "completeFirstChat": completeFirstChat,
        "interestCategory": interestCategory,
      };

  UserModel copyWith({
    String? id,
    String? nickname,
    String? profileUrl,
    String? code,
    bool? isAuth,
    DateTime? birthday,
    ChallengeGender? gender,
    bool? completeTutorial,
    bool? completeWalkThrough,
    String? interestCategory,
    bool? completeFirstChat,
  }) {
    return UserModel(
      id: id ?? this.id,
      nickname: nickname ?? this.nickname,
      profileUrl: profileUrl ?? this.profileUrl,
      code: code ?? this.code,
      isAuth: isAuth ?? this.isAuth,
      birthday: birthday ?? this.birthday,
      gender: gender ?? this.gender,
      completeTutorial: completeTutorial ?? this.completeTutorial,
      completeWalkThrough: completeWalkThrough ?? this.completeWalkThrough,
      interestCategory: interestCategory ?? this.interestCategory,
      completeFirstChat: completeFirstChat ?? this.completeFirstChat,
    );
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.nickname == nickname &&
      other.profileUrl == profileUrl &&
      other.code == code &&
      other.isAuth == isAuth &&
      other.birthday == birthday &&
      other.gender == gender &&
      other.completeTutorial == completeTutorial &&
      other.completeWalkThrough == completeWalkThrough &&
      other.interestCategory == interestCategory &&
      other.completeFirstChat == completeFirstChat;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      nickname.hashCode ^
      profileUrl.hashCode ^
      code.hashCode ^
      isAuth.hashCode ^
      birthday.hashCode ^
      gender.hashCode ^
      completeTutorial.hashCode ^
      completeWalkThrough.hashCode ^
      interestCategory.hashCode ^
      completeFirstChat.hashCode;
  }
}
