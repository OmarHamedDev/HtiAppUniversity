import 'package:json_annotation/json_annotation.dart';

part 'registered_course_response_model.g.dart';

@JsonSerializable()
class RegisteredCourseResponseModel {
  @JsonKey(name: "courseId")
  final int? courseId;
  @JsonKey(name: "courseName")
  final String? courseName;
  @JsonKey(name: "groupName")
  final String? groupName;
  @JsonKey(name: "units")
  final int? units;
  @JsonKey(name: "dateRegistered")
  final String? dateRegistered;

  RegisteredCourseResponseModel ({
    this.courseId,
    this.courseName,
    this.groupName,
    this.units,
    this.dateRegistered,
  });

  factory RegisteredCourseResponseModel.fromJson(Map<String, dynamic> json) {
    return _$RegisteredCourseResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RegisteredCourseResponseModelToJson(this);
  }
}


