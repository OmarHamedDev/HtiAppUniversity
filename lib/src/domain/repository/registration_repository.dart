import '../../../core/api/network/common/result.dart';
import '../../data/model/request/add_registration_request/add_registration_request.dart';
import '../entities/registration_course_entity.dart';
import '../entities/success_massage_entity.dart';

abstract class RegistrationRepository {
  Future<Result<List<RegisteredCourseEntity>>> getSuggestedCourses(
    String studentId,
  );
  Future<Result<List<RegisteredCourseEntity>>> getRegisteredCourse({
    required String studentId,
  });
  Future<Result<SuccessMassageEntity>> deleteRegisteredCourse({
    required String studentId,
    required int courseId,
  });
  Future<Result<SuccessMassageEntity>> addRegisteredCourse({
    required AddRegistrationRequest addRegistrationRequest,
  });
}
