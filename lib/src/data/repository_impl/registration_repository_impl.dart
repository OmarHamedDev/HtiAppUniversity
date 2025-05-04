import 'package:hti_univerity/core/api/network/common/execute_method.dart';
import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/data/model/request/add_registration_request/add_registration_request.dart';
import 'package:hti_univerity/src/domain/entities/registration_course_entity.dart';
import 'package:hti_univerity/src/domain/entities/success_massage_entity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/registration_repository.dart';
import '../data_source/remote_data_source/registration_remote_data_source/registration_remote_data_source.dart';

@Injectable(as: RegistrationRepository)
class RegistrationRepositoryImpl implements RegistrationRepository {
  final RegistrationRemoteDataSource _registrationRemoteDataSource;
  RegistrationRepositoryImpl(this._registrationRemoteDataSource);
  @override
  @override
  Future<Result<List<RegisteredCourseEntity>>> getRegisteredCourse(
      {required String studentId}) async {
    return executeMethod(callMethod: () async {
      final response = await _registrationRemoteDataSource.getRegisteredCourses(
          studentId: studentId);
      return response;
    });
  }

  @override
  Future<Result<SuccessMassageEntity>> addRegisteredCourse(
      {required AddRegistrationRequest addRegistrationRequest}) {
    return executeMethod<SuccessMassageEntity>(callMethod: () async {
      final response = await _registrationRemoteDataSource.addRegisteredCourse(
          addRegistrationRequest: addRegistrationRequest);
      return response;
    });
  }

  @override
  Future<Result<SuccessMassageEntity>> deleteRegisteredCourse(
      {required String studentId, required int courseId}) async {
    return executeMethod<SuccessMassageEntity>(callMethod: () async {
      final response = await _registrationRemoteDataSource
          .deleteRegisteredCourse(studentId: studentId, courseId: courseId);
      return response;
    });
  }

  @override
  Future<Result<List<RegisteredCourseEntity>>> getSuggestedCourses(String studentId,) async {
    return executeMethod<List<RegisteredCourseEntity>>(callMethod: () async {
      final response = await _registrationRemoteDataSource.getSuggestedCourses(studentId);
      return response;
    });
  }
}
