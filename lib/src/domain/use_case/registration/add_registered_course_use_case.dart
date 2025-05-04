import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:injectable/injectable.dart';

import '../../../data/model/request/add_registration_request/add_registration_request.dart';
import '../../entities/success_massage_entity.dart';
import '../../repository/registration_repository.dart';

@injectable
class AddRegisteredCourseUseCase {
  final RegistrationRepository addRegisteredCourse;

  AddRegisteredCourseUseCase(this.addRegisteredCourse);

  Future<Result<SuccessMassageEntity>> invoke(
      {required AddRegistrationRequest addRegistrationRequest}) async {
    return await addRegisteredCourse.addRegisteredCourse(
        addRegistrationRequest: addRegistrationRequest);
  }
}
