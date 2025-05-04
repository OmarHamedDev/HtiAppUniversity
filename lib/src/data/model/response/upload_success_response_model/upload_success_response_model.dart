import 'package:json_annotation/json_annotation.dart';

part 'upload_success_response_model.g.dart';

@JsonSerializable()
class UploadSuccessResponseModel {
  @JsonKey(name: "message")
  final String? message;

  UploadSuccessResponseModel ({
    this.message,
  });

  factory UploadSuccessResponseModel.fromJson(Map<String, dynamic> json) {
    return _$UploadSuccessResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UploadSuccessResponseModelToJson(this);
  }
}


