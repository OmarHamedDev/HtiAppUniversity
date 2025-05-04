import 'package:json_annotation/json_annotation.dart';

part 'add_registration_request.g.dart';

@JsonSerializable()
class AddRegistrationRequest {
  @JsonKey(name: "courseId")
  final int? courseId;
  @JsonKey(name: "studentId")
  final int? studentId;
  @JsonKey(name: "groupId")
  final int? groupId;

  AddRegistrationRequest ({
    this.courseId,
    this.studentId,
    this.groupId,
  });

  factory AddRegistrationRequest.fromJson(Map<String, dynamic> json) {
    return _$AddRegistrationRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AddRegistrationRequestToJson(this);
  }
}


