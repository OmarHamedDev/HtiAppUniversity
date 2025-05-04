import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';
import '../../entities/notification_entity.dart';
import '../../repository/student_repository.dart';

@injectable
class GetNotificationStudentUseCase {
  final StudentRepository _studentRepository;
  GetNotificationStudentUseCase(this._studentRepository);
  Future<Result<List<NotificationEntity>>> invoke({
    required String studentId,
  }) async {
    return await _studentRepository.getNotificationStudent(
      studentId: studentId,
    );
  }
}
