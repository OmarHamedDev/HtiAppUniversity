import 'package:hti_univerity/src/domain/repository/doctor_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';

@injectable
class CreateQuizDoctorUseCase {
  final DoctorRepository _doctorRepository;
  CreateQuizDoctorUseCase(this._doctorRepository);
  Future<Result<String>> invoke({
    required String title,
    required String description,
    required String weekId,
    required int courseGroupId,
    required String quizDate,
  }) async {
    return await _doctorRepository.createQuiz(
      weekId: weekId,
      courseGroupId: courseGroupId,
      title: title,
      description: description,
      quizDate: quizDate,
    );
  }
}
