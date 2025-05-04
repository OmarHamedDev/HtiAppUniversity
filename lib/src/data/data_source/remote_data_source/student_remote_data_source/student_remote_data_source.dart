import 'package:hti_univerity/src/domain/entities/attendances_entity.dart';

import '../../../../domain/entities/assignment_entity.dart';
import '../../../../domain/entities/home_entity.dart';
import '../../../../domain/entities/notification_entity.dart';
import '../../../../domain/entities/quiz_entity.dart';

abstract class StudentRemoteDataSource {
 Future<DataHomeEntity>getHomeStudent({required String studentId});
 Future<List<AttendancesEntity>>getAttendanceStudent( String courseId);
 Future<List<AssignmentEntity>>getAssignmentStudent();
 Future<List<QuizEntity>>getQuizStudent(String courseId);
  Future<List<NotificationEntity>> getNotificationStudent({
    required String studentId,
  });
}