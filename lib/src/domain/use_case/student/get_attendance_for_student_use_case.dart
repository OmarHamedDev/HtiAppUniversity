import 'package:hti_univerity/src/domain/repository/student_repository.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/api/network/common/result.dart';
import '../../entities/attendances_entity.dart';

@injectable
class GetAttendanceForStudentUseCase {
  final StudentRepository _studentRepository;
  GetAttendanceForStudentUseCase(this._studentRepository);
  Future<Result<List<AttendancesEntity>>> invoke(
  { required String courseId} ) async {
    return await _studentRepository.getAttendanceStudent( courseId);
  }
}