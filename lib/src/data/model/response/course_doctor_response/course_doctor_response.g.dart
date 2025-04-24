// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_doctor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseDoctorResponse _$CourseDoctorResponseFromJson(
        Map<String, dynamic> json) =>
    CourseDoctorResponse(
      courseName: json['courseName'] as String?,
      groupName: json['groupName'] as String?,
      facultyName: json['facultyName'] as String?,
    );

Map<String, dynamic> _$CourseDoctorResponseToJson(
        CourseDoctorResponse instance) =>
    <String, dynamic>{
      'courseName': instance.courseName,
      'groupName': instance.groupName,
      'facultyName': instance.facultyName,
    };
