import 'package:json_annotation/json_annotation.dart';

part 'admin_notification_count_response_model.g.dart';

@JsonSerializable()
class AdminNotificationCountResponseModel {
  @JsonKey(name: "unreadCount")
  final int? unreadCount;

  AdminNotificationCountResponseModel ({
    this.unreadCount,
  });

  factory AdminNotificationCountResponseModel.fromJson(Map<String, dynamic> json) {
    return _$AdminNotificationCountResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AdminNotificationCountResponseModelToJson(this);
  }
}


