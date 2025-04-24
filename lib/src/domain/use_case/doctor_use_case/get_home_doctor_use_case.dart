import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';
import '../../entities/course_doctor_entity.dart';
import '../../repository/doctor_repository.dart';

@injectable
class GetHomeDoctorUseCase {
  final DoctorRepository _doctorRepository;
  GetHomeDoctorUseCase(this._doctorRepository);
  Future<Result<List<CourseDoctorEntity>>> invoke({required String doctorId}) async {
    return await _doctorRepository.getHomeDoctor(doctorId);
  }
}
