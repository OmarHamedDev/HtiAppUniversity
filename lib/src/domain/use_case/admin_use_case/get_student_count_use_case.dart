import 'package:hti_univerity/src/domain/repository/admin_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';
import '../../entities/sudent_count_entity.dart';
import '../../repository/student_repository.dart';

@injectable
class GetStudentCountUseCase {
  final AdminRepository _adminRepository;
  GetStudentCountUseCase(this._adminRepository);
  Future<Result<List<StudentCountEntity>>> invoke() async {
    return await _adminRepository.getStudentCount();
  }


}