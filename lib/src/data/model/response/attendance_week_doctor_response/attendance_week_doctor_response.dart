import 'package:json_annotation/json_annotation.dart';

part 'attendance_week_doctor_response.g.dart';

@JsonSerializable()
class AttendanceWeekDoctorResponse {
  @JsonKey(name: "weekNumber")
  final int? weekNumber;
  @JsonKey(name: "weekName")
  final String? weekName;

  AttendanceWeekDoctorResponse ({
    this.weekNumber,
    this.weekName,
  });

  factory AttendanceWeekDoctorResponse.fromJson(Map<String, dynamic> json) {
    return _$AttendanceWeekDoctorResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AttendanceWeekDoctorResponseToJson(this);
  }
}


