// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentHomeResponse _$StudentHomeResponseFromJson(Map<String, dynamic> json) =>
    StudentHomeResponse(
      studentId: (json['studentId'] as num?)?.toInt(),
      name: json['name'] as String?,
      gpa: (json['gpa'] as num?)?.toDouble(),
      totalUnits: (json['totalUnits'] as num?)?.toInt(),
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => Courses.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StudentHomeResponseToJson(
        StudentHomeResponse instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
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
