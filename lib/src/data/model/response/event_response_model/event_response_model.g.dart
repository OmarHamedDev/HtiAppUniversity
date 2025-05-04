// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventResponseModel _$EventResponseModelFromJson(Map<String, dynamic> json) =>
    EventResponseModel(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      imageBase64: json['imageBase64'],
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$EventResponseModelToJson(EventResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'imageBase64': instance.imageBase64,
      'createdAt': instance.createdAt,
    };
