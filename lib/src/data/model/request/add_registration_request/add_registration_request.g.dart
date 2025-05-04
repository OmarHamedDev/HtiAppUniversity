// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddRegistrationRequest _$AddRegistrationRequestFromJson(
        Map<String, dynamic> json) =>
    AddRegistrationRequest(
      courseId: (json['courseId'] as num?)?.toInt(),
      studentId: (json['studentId'] as num?)?.toInt(),
      groupId: (json['groupId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AddRegistrationRequestToJson(
        AddRegistrationRequest instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'studentId': instance.studentId,
      'groupId': instance.groupId,
    };
