import 'package:hti_univerity/src/domain/repository/doctor_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';
import '../../entities/doctor_notification_submission_entity.dart';

@injectable
class GetAllDoctorNotificationSubmissionUseCase {
  final DoctorRepository _repository;

  GetAllDoctorNotificationSubmissionUseCase(this._repository);

  Future<Result<List<DoctorNotificationSubmissionEntity>>> invoke({required String id}) async {
    return await _repository.getDoctorNotificationSubmission(id);
  }
}