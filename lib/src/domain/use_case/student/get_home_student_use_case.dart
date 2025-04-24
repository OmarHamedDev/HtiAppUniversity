import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/domain/entities/home_entity.dart';
import 'package:injectable/injectable.dart';
import '../../repository/student_repository.dart';

@injectable
class GetHomeStudentUseCase {
  final StudentRepository _studentRepository;

  GetHomeStudentUseCase(this._studentRepository);

  Future<Result<DataHomeEntity>> invoke({required String studentId}) async {
    return await _studentRepository.getHomeStudent(studentId);
  }
}
