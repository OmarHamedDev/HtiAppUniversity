import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:injectable/injectable.dart';

import '../../entities/registration_course_entity.dart';
import '../../repository/registration_repository.dart';
@injectable
class GetSuggestedCoursesUseCase {
  final RegistrationRepository _registrationRepository;
  GetSuggestedCoursesUseCase(this._registrationRepository);
  Future<Result<List<RegisteredCourseEntity>>> invoke(String studentId) async {
    return await _registrationRepository.getSuggestedCourses(studentId);
  }
}
