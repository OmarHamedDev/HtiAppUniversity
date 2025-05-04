import 'package:hti_univerity/src/data/model/response/admin_notification_response_model/admin_notification_count_response_model.dart';
import 'package:hti_univerity/src/domain/entities/notification_entity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/admin_notifcition_count.dart';
import '../../domain/entities/faculty_count_entity.dart';
import '../../domain/entities/sudent_count_entity.dart';
import '../model/response/faculty_count_response_model/faculty_count_response_model.dart';
import '../model/response/notification_response_model/get_all_notification_response_model.dart';
import '../model/response/student_count_response_model/student_count_response_model.dart';

abstract class AdminMapper {
  AdminNotificationCount
      mapAdminNotificationCountResponseToAdminNotificationCount(
          AdminNotificationCountResponseModel adminNotificationCountResponse);
  List<StudentCountEntity> mapStudentCountResponseToStudentCountEntity(
      List<StudentCountResponseModel> studentCountResponse);
  FacultyCountEntity mapFacultyCountResponseToFacultyCountEntity(
      FacultyCountResponseModel facultyCountResponse);
  List<NotificationEntity> mapNotificationResponseToNotificationEntity(
      List<GetAllNotificationResponseModel> notificationResponse);
}

@Injectable(as: AdminMapper)
class AdminMapperImpl implements AdminMapper {
  @override
  AdminNotificationCount
      mapAdminNotificationCountResponseToAdminNotificationCount(
          AdminNotificationCountResponseModel adminNotificationCountResponse) {
    return AdminNotificationCount(
        count: adminNotificationCountResponse.unreadCount ?? 0);
  }

  @override
  FacultyCountEntity mapFacultyCountResponseToFacultyCountEntity(
      FacultyCountResponseModel facultyCountResponse) {
    return FacultyCountEntity(
        facultyCount: facultyCountResponse.facultyCount ?? 0);
  }

  @override
  List<StudentCountEntity> mapStudentCountResponseToStudentCountEntity(
      List<StudentCountResponseModel> studentCountResponse) {
    if (studentCountResponse.isEmpty) return [];
    return studentCountResponse
        .map((e) => StudentCountEntity(
            studentCount: e.studentCount ?? 0, semester: e.semester ?? 0))
        .toList();
  }

  @override
  List<NotificationEntity> mapNotificationResponseToNotificationEntity(
      List<GetAllNotificationResponseModel> notificationResponse) {
    if (notificationResponse.isEmpty) return [];
    return notificationResponse
        .map((e) => NotificationEntity(
              id: e.id ?? 0,
              title: e.title ?? " ",
              message: e.message ?? " ",
              fileUrl: e.fileUrl ?? " ",
              isRead: e.isRead ?? false,
              applicationId: e.applicationId ?? 0,
              application: e.application ?? " ",
            ))
        .toList();
  }
}
