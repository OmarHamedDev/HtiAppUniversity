import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/domain/entities/home_entity.dart';

import '../entities/assignment_entity.dart';
import '../entities/attendances_entity.dart';
import '../entities/notification_entity.dart';
import '../entities/quiz_entity.dart';

abstract class StudentRepository {
  Future<Result<DataHomeEntity>> getHomeStudent(String studentId);
  Future<Result<List<AttendancesEntity>>> getAttendanceStudent(String courseId);
  Future<Result<List<QuizEntity>>> getQuizStudent(String courseId);
  Future<Result<List<AssignmentEntity>>> getAssignmentStudent();
  Future<Result<List<NotificationEntity>>> getNotificationStudent({
    required String studentId,
  });
}
