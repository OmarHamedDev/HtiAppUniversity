import 'package:hti_univerity/src/domain/repository/student_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';
import '../../entities/quiz_entity.dart';

@injectable
class  GetQuizForStudentUseCase {
  final StudentRepository _studentRepository;
  GetQuizForStudentUseCase(this._studentRepository);
  Future<Result<List<QuizEntity>>> invoke(
  {required String studentId, required String courseId} ) async {
    return await _studentRepository.getQuizStudent(studentId, courseId);
  }
}