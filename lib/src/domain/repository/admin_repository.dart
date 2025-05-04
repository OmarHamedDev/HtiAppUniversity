import '../../../core/api/network/common/result.dart';
import '../entities/admin_notifcition_count.dart';
import '../entities/faculty_count_entity.dart';
import '../entities/notification_entity.dart';
import '../entities/sudent_count_entity.dart';

abstract class AdminRepository {
  Future<Result<AdminNotificationCount>> getAdminNotificationCount();
  Future<Result<List<StudentCountEntity>>> getStudentCount();
  Future<Result<FacultyCountEntity>> getFacultyCount();
  Future<Result<List<NotificationEntity>>> getAllAdminNotification();
}
