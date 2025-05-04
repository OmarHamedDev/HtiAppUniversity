// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_quiz_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateQuizRequest _$CreateQuizRequestFromJson(Map<String, dynamic> json) =>
    CreateQuizRequest(
      title: json['title'] as String?,
      description: json['description'] as String?,
      quizDate: json['quizDate'] as String?,
      weekNumber: json['weekNumber'] as String?,
      courseGroupId: (json['courseGroupId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CreateQuizRequestToJson(CreateQuizRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'quizDate': instance.quizDate,
      'weekNumber': instance.weekNumber,
      'courseGroupId': instance.courseGroupId,
    };
