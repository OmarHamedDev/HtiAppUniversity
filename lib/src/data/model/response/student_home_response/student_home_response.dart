import 'package:json_annotation/json_annotation.dart';

part 'student_home_response.g.dart';

@JsonSerializable()
class StudentHomeResponse {
  @JsonKey(name: "studentIdentifier")
  final String? studentId;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "gpa")
  final double? gpa;
  @JsonKey(name: "totalUnits")
  final int? totalUnits;
  @JsonKey(name: "courses")
  final List<Courses>? courses;

  StudentHomeResponse ({
    this.studentId,
    this.name,
    this.gpa,
    this.totalUnits,
    this.courses,
  });

  factory StudentHomeResponse.fromJson(Map<String, dynamic> json) {
    return _$StudentHomeResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StudentHomeResponseToJson(this);
  }
}

@JsonSerializable()
class Courses {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "department")
  final String? department;

  Courses ({
    this.id,
    this.name,
    this.department,
  });

  factory Courses.fromJson(Map<String, dynamic> json) {
    return _$CoursesFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CoursesToJson(this);
  }
}


