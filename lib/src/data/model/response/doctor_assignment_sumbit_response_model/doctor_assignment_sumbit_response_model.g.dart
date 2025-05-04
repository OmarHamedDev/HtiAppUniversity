// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_assignment_sumbit_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorAssignmentSumbitResponseModel
    _$DoctorAssignmentSumbitResponseModelFromJson(Map<String, dynamic> json) =>
        DoctorAssignmentSumbitResponseModel(
          id: (json['id'] as num?)?.toInt(),
          title: json['title'] as String?,
          message: json['message'] as String?,
          createdAt: json['createdAt'] as String?,
          isRead: json['isRead'] as bool?,
          fileDownloadUrl: json['fileDownloadUrl'] as String?,
        );

Map<String, dynamic> _$DoctorAssignmentSumbitResponseModelToJson(
        DoctorAssignmentSumbitResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'createdAt': instance.createdAt,
      'isRead': instance.isRead,
      'fileDownloadUrl': instance.fileDownloadUrl,
    };
