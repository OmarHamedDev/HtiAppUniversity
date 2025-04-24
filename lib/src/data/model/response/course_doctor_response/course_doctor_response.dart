import 'package:json_annotation/json_annotation.dart';

part 'course_doctor_response.g.dart';

@JsonSerializable()
class CourseDoctorResponse {
  @JsonKey(name: "courseName")
  final String? courseName;
  @JsonKey(name: "groupName")
  final String? groupName;
  @JsonKey(name: "facultyName")
  final String? facultyName;

  CourseDoctorResponse ({
    this.courseName,
    this.groupName,
    this.facultyName,
  });

  factory CourseDoctorResponse.fromJson(Map<String, dynamic> json) {
    return _$CourseDoctorResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CourseDoctorResponseToJson(this);
  }
}


