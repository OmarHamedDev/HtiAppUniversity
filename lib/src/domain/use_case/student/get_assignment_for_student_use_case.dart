import 'package:hti_univerity/src/domain/repository/student_repository.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/api/network/common/result.dart';
import '../../entities/assignment_entity.dart';
@injectable
class  GetAssignmentForStudentUseCase {
  final StudentRepository _studentRepository;
  GetAssignmentForStudentUseCase(this._studentRepository);
  Future<Result<List<AssignmentEntity>>> invoke(
    ) async {
    return await _studentRepository.getAssignmentStudent();
  }

}