import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'koString')
enum ChallengeGender {
  MALE('MALE', '남성'),
  FEMALE('FEMALE', '여성'),
  NONE('NONE', '무관');

  final String genderToServer;
  final String koString;
  const ChallengeGender(this.genderToServer, this.koString);

  factory ChallengeGender.fromString(String str) {
    switch (str) {
      case 'MALE':
        return MALE;
      case 'FEMALE':
        return FEMALE;
      case 'NONE':
        return NONE;
      default:
        return NONE;
    }
  }
}