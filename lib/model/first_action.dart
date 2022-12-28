
import 'package:json_annotation/json_annotation.dart';

part 'first_action.g.dart';

@JsonSerializable()
class FirstAction {
  FirstAction({
    required this.name,
    required this.complete,
  });

  final String name;
  final bool complete;

  factory FirstAction.fromJson(Map<String, dynamic> json) => _$FirstActionFromJson(json);

  Map<String, dynamic> toJson() => _$FirstActionToJson(this);
}