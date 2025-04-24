// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_attendance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentAttendanceResponse _$StudentAttendanceResponseFromJson(
        Map<String, dynamic> json) =>
    StudentAttendanceResponse(
      week: json['week'] as String?,
      lecture: json['lecture'] as String?,
      section: json['section'] as String?,
    );

Map<String, dynamic> _$StudentAttendanceResponseToJson(
        StudentAttendanceResponse instance) =>
    <String, dynamic>{
      'week': instance.week,
      'lecture': instance.lecture,
      'section': instance.section,
    };
