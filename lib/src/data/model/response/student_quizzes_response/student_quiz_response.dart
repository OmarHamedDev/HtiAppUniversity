import 'package:json_annotation/json_annotation.dart';

part 'student_quiz_response.g.dart';

@JsonSerializable()
class StudentQuizResponse {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "quizDate")
  final String? quizDate;
  @JsonKey(name: "weekNumber")
  final String? weekNumber;

  StudentQuizResponse ({
    this.id,
    this.title,
    this.quizDate,
    this.weekNumber,
  });

  factory StudentQuizResponse.fromJson(Map<String, dynamic> json) {
    return _$StudentQuizResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StudentQuizResponseToJson(this);
  }
}


