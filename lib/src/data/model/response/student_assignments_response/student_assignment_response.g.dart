// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_assignment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentAssignmentResponse _$StudentAssignmentResponseFromJson(
        Map<String, dynamic> json) =>
    StudentAssignmentResponse(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      deadline: json['deadline'] as String?,
      groupName: json['groupName'] as String?,
      weekNumber: json['weekNumber'] as String?,
      courseName: json['courseName'] as String?,
    );

Map<String, dynamic> _$StudentAssignmentResponseToJson(
        StudentAssignmentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'deadline': instance.deadline,
      'groupName': instance.groupName,
      'weekNumber': instance.weekNumber,
      'courseName': instance.courseName,
    };
