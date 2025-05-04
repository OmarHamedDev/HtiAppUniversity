// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_course_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisteredCourseResponseModel _$RegisteredCourseResponseModelFromJson(
        Map<String, dynamic> json) =>
    RegisteredCourseResponseModel(
      courseId: (json['courseId'] as num?)?.toInt(),
      courseName: json['courseName'] as String?,
      groupName: json['groupName'] as String?,
      units: (json['units'] as num?)?.toInt(),
      dateRegistered: json['dateRegistered'] as String?,
    );

Map<String, dynamic> _$RegisteredCourseResponseModelToJson(
        RegisteredCourseResponseModel instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'courseName': instance.courseName,
      'groupName': instance.groupName,
      'units': instance.units,
      'dateRegistered': instance.dateRegistered,
    };
