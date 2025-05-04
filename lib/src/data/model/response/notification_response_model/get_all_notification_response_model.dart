import 'package:json_annotation/json_annotation.dart';

part 'get_all_notification_response_model.g.dart';

@JsonSerializable()
class GetAllNotificationResponseModel {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "studentId")
  final dynamic? studentId;
  @JsonKey(name: "userId")
  final int? userId;
  @JsonKey(name: "user")
  final dynamic? user;
  @JsonKey(name: "courseId")
  final dynamic? courseId;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "facultyId")
  final dynamic? facultyId;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "fileUrl")
  final dynamic? fileUrl;
  @JsonKey(name: "isRead")
  final bool? isRead;
  @JsonKey(name: "applicationId")
  final dynamic? applicationId;
  @JsonKey(name: "application")
  final dynamic? application;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "relatedItemId")
  final int? relatedItemId;
  @JsonKey(name: "assignmentId")
  final dynamic? assignmentId;
  @JsonKey(name: "assignment")
  final dynamic? assignment;
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @JsonKey(name: "student")
  final dynamic? student;
  @JsonKey(name: "course")
  final dynamic? course;

  GetAllNotificationResponseModel ({
    this.id,
    this.studentId,
    this.userId,
    this.user,
    this.courseId,
    this.title,
    this.facultyId,
    this.message,
    this.fileUrl,
    this.isRead,
    this.applicationId,
    this.application,
    this.type,
    this.relatedItemId,
    this.assignmentId,
    this.assignment,
    this.createdAt,
    this.student,
    this.course,
  });

  factory GetAllNotificationResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetAllNotificationResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GetAllNotificationResponseModelToJson(this);
  }
}


