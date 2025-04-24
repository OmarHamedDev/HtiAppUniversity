import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';
import '../../entities/attendance_week_doctor_entity.dart';
import '../../repository/doctor_repository.dart';
@injectable
class GetAttendanceWeekDoctorUseCase {
  final DoctorRepository _doctorRepository;
  GetAttendanceWeekDoctorUseCase(this._doctorRepository);
  Future<Result<List<AttendanceWeekDoctorEntity>>> invoke(String courseId) async {
    return await _doctorRepository.getAttendanceWeekDoctor(courseId);

  }
}