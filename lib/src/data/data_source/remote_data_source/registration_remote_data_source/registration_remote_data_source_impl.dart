import 'package:hti_univerity/src/data/data_source/remote_data_source/registration_remote_data_source/registration_remote_data_source.dart';
import 'package:hti_univerity/src/data/model/request/add_registration_request/add_registration_request.dart';
import 'package:hti_univerity/src/domain/entities/registration_course_entity.dart';
import 'package:hti_univerity/src/domain/entities/success_massage_entity.dart';
import 'package:injectable/injectable.dart';

import '../../../api/api_manger.dart';
import '../../../mappers/registeration_mapper.dart';

@Injectable(as: RegistrationRemoteDataSource)
class RegistrationRemoteDataSourceImpl implements RegistrationRemoteDataSource {
  final RegisteredMapper _registeredMapper;
  final ApiManger _apiManger;
  RegistrationRemoteDataSourceImpl(
    this._registeredMapper,
    this._apiManger,
  );
  @override
  Future<List<RegisteredCourseEntity>> getRegisteredCourses(
      {required String studentId}) async {
    var response = await _apiManger.getRegisteredCourses(studentId);
    return _registeredMapper.mapRegisteredResponseToRegisteredEntity(
        responseModel: response);
  }

  @override
  Future<SuccessMassageEntity> addRegisteredCourse(
      {required AddRegistrationRequest addRegistrationRequest}) async {
    var response = await _apiManger.addRegistration(addRegistrationRequest);
    return _registeredMapper.mapRegistrationResponseToSuccessMassageEntity(
        responseModel: response);
  }

  @override
  Future<SuccessMassageEntity> deleteRegisteredCourse(
      {required String studentId, required int courseId}) async {
    var response = await _apiManger.deleteRegisteredCourse(studentId, courseId);
    return _registeredMapper.mapRegistrationResponseToSuccessMassageEntity(
        responseModel: response);
  }

  @override
  Future<List<RegisteredCourseEntity>> getSuggestedCourses(String studentId,)async {
    var response = await _apiManger.getSuggestedCourses(studentId);
    return _registeredMapper.mapRegisteredSuggestedResponseToRegisteredEntity(
        responseModel: response);
  }
}
