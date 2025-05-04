import 'package:json_annotation/json_annotation.dart';

part 'student_count_response_model.g.dart';

@JsonSerializable()
class StudentCountResponseModel {
  @JsonKey(name: "semester")
  final int? semester;
  @JsonKey(name: "studentCount")
  final int? studentCount;

  StudentCountResponseModel ({
    this.semester,
    this.studentCount,
  });

  factory StudentCountResponseModel.fromJson(Map<String, dynamic> json) {
    return _$StudentCountResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StudentCountResponseModelToJson(this);
  }
}


