import 'package:json_annotation/json_annotation.dart';

part 'event_response_model.g.dart';

@JsonSerializable()
class EventResponseModel {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "imageBase64")
  final dynamic? imageBase64;
  @JsonKey(name: "createdAt")
  final String? createdAt;

  EventResponseModel ({
    this.id,
    this.title,
    this.description,
    this.imageBase64,
    this.createdAt,
  });

  factory EventResponseModel.fromJson(Map<String, dynamic> json) {
    return _$EventResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$EventResponseModelToJson(this);
  }
}


