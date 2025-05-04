// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_count_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentCountResponseModel _$StudentCountResponseModelFromJson(
        Map<String, dynamic> json) =>
    StudentCountResponseModel(
      semester: (json['semester'] as num?)?.toInt(),
      studentCount: (json['studentCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StudentCountResponseModelToJson(
        StudentCountResponseModel instance) =>
    <String, dynamic>{
      'semester': instance.semester,
      'studentCount': instance.studentCount,
    };
