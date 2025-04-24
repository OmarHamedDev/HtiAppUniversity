import '../../../../domain/entities/attendance_week_details_entity.dart';
import '../../../../domain/entities/attendance_week_doctor_entity.dart';
import '../../../../domain/entities/course_doctor_entity.dart';

abstract class DoctorRemoteDataSource {
  Future<List<CourseDoctorEntity> > getHomeDoctor(String doctorId);
  Future<List<AttendanceWeekDoctorEntity>> getAttendanceWeekDoctor(String courseId);
  Future<List<AttendanceWeekDetailsEntity>> getAttendanceWeekDetails(String courseId, String weekId);

}