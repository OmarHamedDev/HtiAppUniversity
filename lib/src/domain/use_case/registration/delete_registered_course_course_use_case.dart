import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';
import '../../entities/success_massage_entity.dart';
import '../../repository/registration_repository.dart';

@injectable
class DeleteRegisteredCourseCourseUseCase {
  final RegistrationRepository deleteRegisteredCourse;

  DeleteRegisteredCourseCourseUseCase(this.deleteRegisteredCourse);

  Future<Result<SuccessMassageEntity>> invoke({required int courseId, required String studentId}) async {
   return await deleteRegisteredCourse.deleteRegisteredCourse(studentId: studentId,courseId: courseId);
  }
}