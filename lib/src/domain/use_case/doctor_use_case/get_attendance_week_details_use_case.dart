import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';
import '../../entities/attendance_week_details_entity.dart';
import '../../repository/doctor_repository.dart';

@injectable
class GetAttendanceWeekDetailsUseCase {
  final DoctorRepository _doctorRepository;
  GetAttendanceWeekDetailsUseCase(this._doctorRepository);

  Future<Result<List<AttendanceWeekDetailsEntity>>> invoke(
      String courseId, String weekId) async {
    return await _doctorRepository.getAttendanceWeekDetails(courseId, weekId);
  }
}
