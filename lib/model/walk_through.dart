

import 'package:json_annotation/json_annotation.dart';

part 'walk_through.g.dart';

@JsonSerializable()
class WalkThrough {
  WalkThrough({
    required this.complete,
    required this.interestCategory,
  });

  final bool complete;
  final String? interestCategory;

  factory WalkThrough.fromJson(Map<String, dynamic> json) => _$WalkThroughFromJson(json);

  Map<String, dynamic> toJson() => _$WalkThroughToJson(this);
}