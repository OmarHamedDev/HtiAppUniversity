import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';
import '../../entities/registration_course_entity.dart';
import '../../repository/registration_repository.dart';

@injectable
class GetRegisteredCourseUseCase {
  final RegistrationRepository _registrationRepository;
  GetRegisteredCourseUseCase(this._registrationRepository);

  Future<Result<List<RegisteredCourseEntity>>> invoke(
      {required String studentId}) async {
    return await _registrationRepository.getRegisteredCourse(
        studentId: studentId);
  }
}
