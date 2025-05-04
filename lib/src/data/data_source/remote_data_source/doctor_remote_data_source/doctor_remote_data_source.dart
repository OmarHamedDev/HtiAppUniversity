import '../../../../domain/entities/attendance_week_details_entity.dart';
import '../../../../domain/entities/attendance_week_doctor_entity.dart';
import '../../../../domain/entities/course_doctor_entity.dart';
import '../../../../domain/entities/doctor_notification_submission_entity.dart';

abstract class DoctorRemoteDataSource {
  Future<List<CourseDoctorEntity> > getHomeDoctor(String doctorId);
  Future<List<AttendanceWeekDoctorEntity>> getAttendanceWeekDoctor(String courseId);
  Future<List<AttendanceWeekDetailsEntity>> getAttendanceWeekDetails(String courseId, String weekId);
  Future<String> createAssignment({
    required String title,
    required String description,
    required String  weekId,
    required String  courseGroupId,
  });
  Future<String> createQuiz({
    required String title,
    required String description,
    required String  weekId,
    required int  courseGroupId,
    required String quizDate,
  });
  Future<List<DoctorNotificationSubmissionEntity>>getDoctorNotificationSubmission(String id);

}