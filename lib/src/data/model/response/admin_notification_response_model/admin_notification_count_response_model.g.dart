// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_notification_count_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminNotificationCountResponseModel
    _$AdminNotificationCountResponseModelFromJson(Map<String, dynamic> json) =>
        AdminNotificationCountResponseModel(
          unreadCount: (json['unreadCount'] as num?)?.toInt(),
        );

Map<String, dynamic> _$AdminNotificationCountResponseModelToJson(
        AdminNotificationCountResponseModel instance) =>
    <String, dynamic>{
      'unreadCount': instance.unreadCount,
    };
