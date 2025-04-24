import 'package:hti_univerity/src/data/data_source/remote_data_source/doctor_remote_data_source/doctor_remote_data_source.dart';
import 'package:hti_univerity/src/data/mappers/doctor_mapper.dart';
import 'package:hti_univerity/src/domain/entities/attendance_week_doctor_entity.dart';
import 'package:hti_univerity/src/domain/entities/course_doctor_entity.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entities/attendance_week_details_entity.dart';
import '../../../api/api_manger.dart';

@Injectable(as: DoctorRemoteDataSource)
class DoctorRemoteDataSourceImpl implements DoctorRemoteDataSource {
  final ApiManger _apiManger;
  final DoctorMapper _doctorMapper;
  DoctorRemoteDataSourceImpl(this._apiManger, this._doctorMapper);

  @override
  Future<List<CourseDoctorEntity>> getHomeDoctor(String doctorId) async {
    final response = await _apiManger.getHomeDoctor(doctorId);
    return _doctorMapper.mapDoctorHomeResponseToCourseDoctorEntity(
        courseDoctorResponse: response);
  }

  @override
  Future<List<AttendanceWeekDoctorEntity>> getAttendanceWeekDoctor(
      String courseId) async {
    var attendanceWeekDoctorResponse =
        await _apiManger.getAttendanceAllWeekDoctor(courseId);
    return _doctorMapper
        .mapAttendanceWeekDoctorResponseToAttendanceWeekDoctorEntity(
            attendanceWeekDoctorResponse: attendanceWeekDoctorResponse);
  }

  @override
  Future<List<AttendanceWeekDetailsEntity>> getAttendanceWeekDetails(String courseId, String weekId) async{
    var attendanceWeekDetailsResponse = await _apiManger.getAttendanceWeekDetails(courseId, weekId);
    return _doctorMapper.mapAttendanceWeekDetailsResponseToAttendanceWeekDetailsEntity(attendanceWeekDoctorResponse: attendanceWeekDetailsResponse);
  }
}
