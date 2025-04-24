// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_week_doctor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttendanceWeekDoctorResponse _$AttendanceWeekDoctorResponseFromJson(
        Map<String, dynamic> json) =>
    AttendanceWeekDoctorResponse(
      weekNumber: (json['weekNumber'] as num?)?.toInt(),
      weekName: json['weekName'] as String?,
    );

Map<String, dynamic> _$AttendanceWeekDoctorResponseToJson(
        AttendanceWeekDoctorResponse instance) =>
    <String, dynamic>{
      'weekNumber': instance.weekNumber,
      'weekName': instance.weekName,
    };
