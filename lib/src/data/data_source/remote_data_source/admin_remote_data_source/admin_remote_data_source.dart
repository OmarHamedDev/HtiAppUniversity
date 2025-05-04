import 'package:hti_univerity/src/domain/entities/faculty_count_entity.dart';
import 'package:hti_univerity/src/domain/entities/sudent_count_entity.dart';

import '../../../../domain/entities/admin_notifcition_count.dart';
import '../../../../domain/entities/notification_entity.dart';

abstract class AdminRemoteDataSource {
  Future<AdminNotificationCount> getAdminNotificationCount();
  Future<List<StudentCountEntity>>getStudentCount();
  Future<FacultyCountEntity>getFacultyCount();
  Future<List<NotificationEntity>>getAllAdminNotification();

}