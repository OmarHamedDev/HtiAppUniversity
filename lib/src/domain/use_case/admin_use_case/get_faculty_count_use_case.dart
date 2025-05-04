import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';
import '../../entities/faculty_count_entity.dart';
import '../../repository/admin_repository.dart';

@injectable
class GetFacultyCountUseCase {
  final AdminRepository _adminRepository;
  GetFacultyCountUseCase(this._adminRepository);
  Future<Result<FacultyCountEntity>> invoke() async {
    return await _adminRepository.getFacultyCount();
  }
}