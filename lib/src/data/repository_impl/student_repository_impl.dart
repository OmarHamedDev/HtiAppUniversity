import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/domain/entities/assignment_entity.dart';
import 'package:hti_univerity/src/domain/entities/attendances_entity.dart';
import 'package:hti_univerity/src/domain/entities/home_entity.dart';
import 'package:hti_univerity/src/domain/entities/notification_entity.dart';
import 'package:hti_univerity/src/domain/entities/quiz_entity.dart';
import 'package:injectable/injectable.dart';

import '../../../core/api/network/common/execute_method.dart';
import '../../domain/repository/student_repository.dart';
import '../data_source/remote_data_source/student_remote_data_source/student_remote_data_source.dart';

@Injectable(as: StudentRepository)
class StudentRepositoryImpl implements StudentRepository {
  final StudentRemoteDataSource _studentRemoteDataSource;
  StudentRepositoryImpl(this._studentRemoteDataSource);
  @override
  Future<Result<List<AttendancesEntity>>> getAttendanceStudent(
      String courseId) async {
    return executeMethod<List<AttendancesEntity>>(
      callMethod: () async {
        var result =
            await _studentRemoteDataSource.getAttendanceStudent(courseId);
        return result;
      },
    );
  }

  @override
  Future<Result<List<AssignmentEntity>>> getAssignmentStudent() {
    return executeMethod<List<AssignmentEntity>>(
      callMethod: () async {
        var result = await _studentRemoteDataSource.getAssignmentStudent();
        return result;
      },
    );
  }

  @override
  Future<Result<List<QuizEntity>>> getQuizStudent(String courseId) {
    return executeMethod<List<QuizEntity>>(
      callMethod: () async {
        var result = await _studentRemoteDataSource.getQuizStudent(courseId);
        return result;
      },
    );
  }

  @override
  Future<Result<DataHomeEntity>> getHomeStudent(String studentId) async {
    return executeMethod<DataHomeEntity>(
      callMethod: () async {
        var result =
            await _studentRemoteDataSource.getHomeStudent(studentId: studentId);
        return result;
      },
    );
  }

  @override
  Future<Result<List<NotificationEntity>>> getNotificationStudent(
      {required String studentId}) async {
    return executeMethod<List<NotificationEntity>>(
      callMethod: () async {
        var result = await _studentRemoteDataSource.getNotificationStudent(
          studentId: studentId,
        );
        return result;
      },
    );
  }
}
