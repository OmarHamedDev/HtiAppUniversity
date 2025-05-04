import '../../../../domain/entities/registration_course_entity.dart';
import '../../../../domain/entities/success_massage_entity.dart';
import '../../../model/request/add_registration_request/add_registration_request.dart';

abstract class RegistrationRemoteDataSource {
  Future<List<RegisteredCourseEntity>> getRegisteredCourses({
    required String studentId,
  });
  Future<SuccessMassageEntity> deleteRegisteredCourse({
    required String studentId,
    required int courseId,
  });
  Future<SuccessMassageEntity> addRegisteredCourse({
    required AddRegistrationRequest addRegistrationRequest,
  });

  Future<List<RegisteredCourseEntity>> getSuggestedCourses(String studentId,);

}