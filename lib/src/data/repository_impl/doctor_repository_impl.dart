import 'package:hti_univerity/core/api/network/common/execute_method.dart';
import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/domain/entities/attendance_week_details_entity.dart';
import 'package:hti_univerity/src/domain/entities/attendance_week_doctor_entity.dart';
import 'package:hti_univerity/src/domain/entities/course_doctor_entity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/doctor_repository.dart';
import '../data_source/remote_data_source/doctor_remote_data_source/doctor_remote_data_source.dart';

@Injectable(as: DoctorRepository)
class DoctorRepositoryImpl implements DoctorRepository {
  final DoctorRemoteDataSource _doctorRemoteDataSource;
  DoctorRepositoryImpl(this._doctorRemoteDataSource);
  @override
  Future<Result<List<CourseDoctorEntity>>> getHomeDoctor(
      String doctorId) async {
    return executeMethod<List<CourseDoctorEntity>>(
      callMethod: () async {
        var result = await _doctorRemoteDataSource.getHomeDoctor(doctorId);
        return result;
      },
    );
  }

  @override
  Future<Result<List<AttendanceWeekDoctorEntity>>> getAttendanceWeekDoctor(String courseId) async{
    return executeMethod<List<AttendanceWeekDoctorEntity>>(
      callMethod: () async {
        var result = await _doctorRemoteDataSource.getAttendanceWeekDoctor(courseId);
        return result;
      },
    );
  }

  @override
  Future<Result<List<AttendanceWeekDetailsEntity>>> getAttendanceWeekDetails(String courseId, String weekId)async {
    return executeMethod<List<AttendanceWeekDetailsEntity>>(
      callMethod: () async {
        var result = await _doctorRemoteDataSource.getAttendanceWeekDetails(courseId, weekId);
        return result;
      },
    );
  }
}
