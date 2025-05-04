import 'package:json_annotation/json_annotation.dart';

part 'suggested_courses_response_model.g.dart';

@JsonSerializable()
class SuggestedCoursesResponseModel {
  @JsonKey(name: "courseId")
  final int? courseId;
  @JsonKey(name: "courseName")
  final String? courseName;
  @JsonKey(name: "units")
  final int? units;
  @JsonKey(name: "groupId")
  final int? groupId;
  @JsonKey(name: "groupName")
  final String? groupName;
  @JsonKey(name: "day")
  final String? day;
  @JsonKey(name: "startTime")
  final String? startTime;
  @JsonKey(name: "endTime")
  final String? endTime;
  @JsonKey(name: "availableSeats")
  final int? availableSeats;

  SuggestedCoursesResponseModel ({
    this.courseId,
    this.courseName,
    this.units,
    this.groupId,
    this.groupName,
    this.day,
    this.startTime,
    this.endTime,
    this.availableSeats,
  });

  factory SuggestedCoursesResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SuggestedCoursesResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SuggestedCoursesResponseModelToJson(this);
  }
}


