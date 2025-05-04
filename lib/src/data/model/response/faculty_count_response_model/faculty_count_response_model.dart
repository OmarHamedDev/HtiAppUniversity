import 'package:json_annotation/json_annotation.dart';

part 'faculty_count_response_model.g.dart';

@JsonSerializable()
class FacultyCountResponseModel {
  @JsonKey(name: "facultyCount")
  final int? facultyCount;

  FacultyCountResponseModel ({
    this.facultyCount,
  });

  factory FacultyCountResponseModel.fromJson(Map<String, dynamic> json) {
    return _$FacultyCountResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FacultyCountResponseModelToJson(this);
  }
}


