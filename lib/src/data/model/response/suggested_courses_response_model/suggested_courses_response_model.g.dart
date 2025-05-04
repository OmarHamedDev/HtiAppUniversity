// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_courses_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestedCoursesResponseModel _$SuggestedCoursesResponseModelFromJson(
        Map<String, dynamic> json) =>
    SuggestedCoursesResponseModel(
      courseId: (json['courseId'] as num?)?.toInt(),
      courseName: json['courseName'] as String?,
      units: (json['units'] as num?)?.toInt(),
      groupId: (json['groupId'] as num?)?.toInt(),
      groupName: json['groupName'] as String?,
      day: json['day'] as String?,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      availableSeats: (json['availableSeats'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SuggestedCoursesResponseModelToJson(
        SuggestedCoursesResponseModel instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'courseName': instance.courseName,
      'units': instance.units,
      'groupId': instance.groupId,
      'groupName': instance.groupName,
      'day': instance.day,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'availableSeats': instance.availableSeats,
    };
