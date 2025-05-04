// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUserResponseModel _$AppUserResponseModelFromJson(
        Map<String, dynamic> json) =>
    AppUserResponseModel(
      token: json['token'] as String?,
      email: json['email'] as String?,
      userId: (json['id'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      role: json['role'] as String?,
      studentInfo: json['studentInfo'] == null
          ? null
          : StudentInfo.fromJson(json['studentInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppUserResponseModelToJson(
        AppUserResponseModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'id': instance.userId,
      'fullName': instance.fullName,
      'email': instance.email,
      'role': instance.role,
      'studentInfo': instance.studentInfo,
    };

StudentInfo _$StudentInfoFromJson(Map<String, dynamic> json) => StudentInfo(
      studentIdentifier: json['studentIdentifier'] as String?,
      name: json['name'] as String?,
      gpa: (json['gpa'] as num?)?.toInt(),
      totalUnits: (json['totalUnits'] as num?)?.toInt(),
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => Courses.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StudentInfoToJson(StudentInfo instance) =>
    <String, dynamic>{
      'studentIdentifier': instance.studentIdentifier,
      'name': instance.name,
      'gpa': instance.gpa,
      'totalUnits': instance.totalUnits,
      'courses': instance.courses,
    };

Courses _$CoursesFromJson(Map<String, dynamic> json) => Courses(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      department: json['department'] as String?,
    );

Map<String, dynamic> _$CoursesToJson(Courses instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'department': instance.department,
    };
