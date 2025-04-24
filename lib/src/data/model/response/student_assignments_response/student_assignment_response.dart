import 'package:json_annotation/json_annotation.dart';

part 'student_assignment_response.g.dart';

@JsonSerializable()
class StudentAssignmentResponse {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "deadline")
  final String? deadline;
  @JsonKey(name: "groupName")
  final String? groupName;
  @JsonKey(name: "weekNumber")
  final String? weekNumber;
  @JsonKey(name: "courseName")
  final String? courseName;

  StudentAssignmentResponse ({
    this.id,
    this.title,
    this.description,
    this.deadline,
    this.groupName,
    this.weekNumber,
    this.courseName,
  });

  factory StudentAssignmentResponse.fromJson(Map<String, dynamic> json) {
    return _$StudentAssignmentResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StudentAssignmentResponseToJson(this);
  }
}


