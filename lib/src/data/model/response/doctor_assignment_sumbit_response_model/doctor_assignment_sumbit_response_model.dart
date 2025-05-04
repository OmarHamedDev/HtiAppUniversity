import 'package:json_annotation/json_annotation.dart';

part 'doctor_assignment_sumbit_response_model.g.dart';

@JsonSerializable()
class DoctorAssignmentSumbitResponseModel {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @JsonKey(name: "isRead")
  final bool? isRead;
  @JsonKey(name: "fileDownloadUrl")
  final String? fileDownloadUrl;

  DoctorAssignmentSumbitResponseModel ({
    this.id,
    this.title,
    this.message,
    this.createdAt,
    this.isRead,
    this.fileDownloadUrl,
  });

  factory DoctorAssignmentSumbitResponseModel.fromJson(Map<String, dynamic> json) {
    return _$DoctorAssignmentSumbitResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DoctorAssignmentSumbitResponseModelToJson(this);
  }
}


