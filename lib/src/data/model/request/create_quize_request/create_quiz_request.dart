import 'package:json_annotation/json_annotation.dart';

part 'create_quiz_request.g.dart';

@JsonSerializable()
class CreateQuizRequest {
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "quizDate")
  final String? quizDate;
  @JsonKey(name: "weekNumber")
  final String? weekNumber;
  @JsonKey(name: "courseGroupId")
  final int? courseGroupId;

  CreateQuizRequest ({
    this.title,
    this.description,
    this.quizDate,
    this.weekNumber,
    this.courseGroupId,
  });

  factory CreateQuizRequest.fromJson(Map<String, dynamic> json) {
    return _$CreateQuizRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CreateQuizRequestToJson(this);
  }
}


