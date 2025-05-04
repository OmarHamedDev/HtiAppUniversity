import 'package:json_annotation/json_annotation.dart';

part 'app_user_response_model.g.dart';

@JsonSerializable()
class AppUserResponseModel {
  @JsonKey(name: "token")
  final String? token;
  @JsonKey(name: "id")
  final int? userId;
  @JsonKey(name: "fullName")
  final String? fullName;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "role")
  final String? role;
  @JsonKey(name: "studentInfo")
  final StudentInfo? studentInfo;

  AppUserResponseModel ({
    this.token,
    this.email,
    this.userId,
    this.fullName,
    this.role,
    this.studentInfo,
  });

  factory AppUserResponseModel.fromJson(Map<String, dynamic> json) {
    return _$AppUserResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AppUserResponseModelToJson(this);
  }
}

@JsonSerializable()
class StudentInfo {
  @JsonKey(name: "studentIdentifier")
  final String? studentIdentifier;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "gpa")
  final int? gpa;
  @JsonKey(name: "totalUnits")
  final int? totalUnits;
  @JsonKey(name: "courses")
  final List<Courses>? courses;

  StudentInfo ({
    this.studentIdentifier,
    this.name,
    this.gpa,
    this.totalUnits,
    this.courses,
  });

  factory StudentInfo.fromJson(Map<String, dynamic> json) {
    return _$StudentInfoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$StudentInfoToJson(this);
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


