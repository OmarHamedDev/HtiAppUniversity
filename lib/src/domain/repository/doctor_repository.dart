import 'package:hti_univerity/core/api/network/common/result.dart';

import '../entities/attendance_week_details_entity.dart';
import '../entities/attendance_week_doctor_entity.dart';
import '../entities/course_doctor_entity.dart';

abstract class DoctorRepository {
  Future<Result<List<CourseDoctorEntity>>> getHomeDoctor(String doctorId);
  Future<Result<List<AttendanceWeekDoctorEntity>>> getAttendanceWeekDoctor(String courseId);
  Future<Result<List<AttendanceWeekDetailsEntity>>> getAttendanceWeekDetails(String courseId, String weekId);
}