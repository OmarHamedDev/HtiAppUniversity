import 'package:hti_univerity/core/api/network/common/result.dart';

import '../entities/attendance_week_details_entity.dart';
import '../entities/attendance_week_doctor_entity.dart';
import '../entities/course_doctor_entity.dart';
import '../entities/doctor_notification_submission_entity.dart';

abstract class DoctorRepository {
  Future<Result<List<CourseDoctorEntity>>> getHomeDoctor(String doctorId);
  Future<Result<List<AttendanceWeekDoctorEntity>>> getAttendanceWeekDoctor(String courseId);
  Future<Result<List<AttendanceWeekDetailsEntity>>> getAttendanceWeekDetails(String courseId, String weekId);
  Future<Result<String>> createAssignment({
    required String title,
    required String description,
    required String  weekId,
    required String  courseGroupId,
  });
  Future<Result<String>> createQuiz({
    required String title,
    required String description,
    required String  weekId,
    required int  courseGroupId,
    required String quizDate,
  });
  Future<Result<List<DoctorNotificationSubmissionEntity>>>getDoctorNotificationSubmission(String id);


}