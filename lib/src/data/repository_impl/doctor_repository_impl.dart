import 'package:hti_univerity/core/api/network/common/execute_method.dart';
import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/domain/entities/attendance_week_details_entity.dart';
import 'package:hti_univerity/src/domain/entities/attendance_week_doctor_entity.dart';
import 'package:hti_univerity/src/domain/entities/course_doctor_entity.dart';
import 'package:hti_univerity/src/domain/entities/doctor_notification_submission_entity.dart';
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
  Future<Result<List<AttendanceWeekDoctorEntity>>> getAttendanceWeekDoctor(
      String courseId) async {
    return executeMethod<List<AttendanceWeekDoctorEntity>>(
      callMethod: () async {
        var result =
            await _doctorRemoteDataSource.getAttendanceWeekDoctor(courseId);
        return result;
      },
    );
  }

  @override
  Future<Result<List<AttendanceWeekDetailsEntity>>> getAttendanceWeekDetails(
      String courseId, String weekId) async {
    return executeMethod<List<AttendanceWeekDetailsEntity>>(
      callMethod: () async {
        var result = await _doctorRemoteDataSource.getAttendanceWeekDetails(
            courseId, weekId);
        return result;
      },
    );
  }

  @override
  Future<Result<String>> createAssignment(
      {required String title,
      required String description,
      required String weekId,
      required String courseGroupId}) {
    return executeMethod<String>(
      callMethod: () async {
        var result = await _doctorRemoteDataSource.createAssignment(
            title: title,
            description: description,
            weekId: weekId,
            courseGroupId: courseGroupId);
        return result;
      },
    );
  }

  @override
  Future<Result<String>> createQuiz(
      {required String title,
      required String description,
      required String weekId,
      required int courseGroupId,
      required String quizDate}) {
    return executeMethod<String>(
      callMethod: () async {
        var result = await _doctorRemoteDataSource.createQuiz(
            title: title,
            description: description,
            weekId: weekId,
            courseGroupId: courseGroupId,
            quizDate: quizDate);
        return result;
      },
    );
  }

  @override
  Future<Result<List<DoctorNotificationSubmissionEntity>>>
      getDoctorNotificationSubmission(String id) {
    return executeMethod<List<DoctorNotificationSubmissionEntity>>(
      callMethod: () async {
        var result =
            await _doctorRemoteDataSource.getDoctorNotificationSubmission(id);
        return result;
      },
    );
  }
}
