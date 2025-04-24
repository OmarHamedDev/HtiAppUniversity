// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_week_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttendanceWeekDetailsResponse _$AttendanceWeekDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    AttendanceWeekDetailsResponse(
      studentName: json['studentName'] as String?,
      studentUniversityId: json['studentUniversityId'],
      isPresent: json['isPresent'] as bool?,
    );

Map<String, dynamic> _$AttendanceWeekDetailsResponseToJson(
        AttendanceWeekDetailsResponse instance) =>
    <String, dynamic>{
      'studentName': instance.studentName,
      'studentUniversityId': instance.studentUniversityId,
      'isPresent': instance.isPresent,
    };
