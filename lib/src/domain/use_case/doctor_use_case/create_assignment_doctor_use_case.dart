import 'package:hti_univerity/src/domain/repository/doctor_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';

@injectable
class CreateAssignmentDoctorUseCase {
  final DoctorRepository _doctorRepository;
  CreateAssignmentDoctorUseCase(this._doctorRepository);

  Future<Result<String>> invoke({
    required String title,
    required String description,
    required String weekId,
    required String courseGroupId,
  }) async {
    return await _doctorRepository.createAssignment(
        title: title,
        description: description,
        weekId: weekId,
        courseGroupId: courseGroupId);
  }
}
