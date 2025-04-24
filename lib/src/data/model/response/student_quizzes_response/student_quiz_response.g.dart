// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_quiz_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentQuizResponse _$StudentQuizResponseFromJson(Map<String, dynamic> json) =>
    StudentQuizResponse(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      quizDate: json['quizDate'] as String?,
      weekNumber: json['weekNumber'] as String?,
    );

Map<String, dynamic> _$StudentQuizResponseToJson(
        StudentQuizResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'quizDate': instance.quizDate,
      'weekNumber': instance.weekNumber,
    };
