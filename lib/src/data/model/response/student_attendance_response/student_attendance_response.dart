import 'package:json_annotation/json_annotation.dart';

part 'student_attendance_response.g.dart';

@JsonSerializable()
class StudentAttendanceResponse {
  @JsonKey(name: "week")
  final String? week;
  @JsonKey(name: "lecture")
  final String? lecture;
  @JsonKey(name: "section")
  final String? section;

  StudentAttendanceResponse ({
    this.week,
    this.lecture,
    this.section,
  });

  factory StudentAttendanceResponse.fromJson(Map<String, dynamic> json) {
    return _$StudentAttendanceResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StudentAttendanceResponseToJson(this);
  }
}


