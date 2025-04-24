import 'package:hti_univerity/src/domain/entities/attendances_entity.dart';

import '../../../../domain/entities/assignment_entity.dart';
import '../../../../domain/entities/home_entity.dart';
import '../../../../domain/entities/quiz_entity.dart';

abstract class StudentRemoteDataSource {
 Future<DataHomeEntity>getHomeStudent({required String studentId});
 Future<List<AttendancesEntity>>getAttendanceStudent(String studentId, String courseId);
 Future<List<AssignmentEntity>>getAssignmentStudent(String studentId,);
 Future<List<QuizEntity>>getQuizStudent(String studentId, String courseId);


}