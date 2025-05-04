// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_notification_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllNotificationResponseModel _$GetAllNotificationResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetAllNotificationResponseModel(
      id: (json['id'] as num?)?.toInt(),
      studentId: json['studentId'],
      userId: (json['userId'] as num?)?.toInt(),
      user: json['user'],
      courseId: json['courseId'],
      title: json['title'] as String?,
      facultyId: json['facultyId'],
      message: json['message'] as String?,
      fileUrl: json['fileUrl'],
      isRead: json['isRead'] as bool?,
      applicationId: json['applicationId'],
      application: json['application'],
      type: json['type'] as String?,
      relatedItemId: (json['relatedItemId'] as num?)?.toInt(),
      assignmentId: json['assignmentId'],
      assignment: json['assignment'],
      createdAt: json['createdAt'] as String?,
      student: json['student'],
      course: json['course'],
    );

Map<String, dynamic> _$GetAllNotificationResponseModelToJson(
        GetAllNotificationResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentId': instance.studentId,
      'userId': instance.userId,
      'user': instance.user,
      'courseId': instance.courseId,
      'title': instance.title,
      'facultyId': instance.facultyId,
      'message': instance.message,
      'fileUrl': instance.fileUrl,
      'isRead': instance.isRead,
      'applicationId': instance.applicationId,
      'application': instance.application,
      'type': instance.type,
      'relatedItemId': instance.relatedItemId,
      'assignmentId': instance.assignmentId,
      'assignment': instance.assignment,
      'createdAt': instance.createdAt,
      'student': instance.student,
      'course': instance.course,
    };
