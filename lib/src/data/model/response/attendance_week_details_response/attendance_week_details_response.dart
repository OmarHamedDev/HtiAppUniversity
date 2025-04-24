import 'package:json_annotation/json_annotation.dart';

part 'attendance_week_details_response.g.dart';

@JsonSerializable()
class AttendanceWeekDetailsResponse {
  @JsonKey(name: "studentName")
  final String? studentName;
  @JsonKey(name: "studentUniversityId")
  final dynamic? studentUniversityId;
  @JsonKey(name: "isPresent")
  final bool? isPresent;

  AttendanceWeekDetailsResponse ({
    this.studentName,
    this.studentUniversityId,
    this.isPresent,
  });

  factory AttendanceWeekDetailsResponse.fromJson(Map<String, dynamic> json) {
    return _$AttendanceWeekDetailsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AttendanceWeekDetailsResponseToJson(this);
  }
}


