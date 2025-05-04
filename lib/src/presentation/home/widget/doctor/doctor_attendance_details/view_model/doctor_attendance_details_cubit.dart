import 'package:bloc/bloc.dart';
import 'package:hti_univerity/src/presentation/home/widget/doctor/doctor_attendance_details/view_model/doctor_attendance_details_action.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../../core/api/network/common/result.dart';
import '../../../../../../domain/entities/attendance_week_details_entity.dart';
import '../../../../../../domain/use_case/doctor_use_case/get_attendance_week_details_use_case.dart';

part 'doctor_attendance_details_state.dart';

@injectable
class DoctorAttendanceDetailsCubit extends Cubit<DoctorAttendanceDetailsState> {
  final GetAttendanceWeekDetailsUseCase _getAttendanceWeekDetailsUseCase;
  DoctorAttendanceDetailsCubit(this._getAttendanceWeekDetailsUseCase)
      : super(DoctorAttendanceDetailsInitial());

  Future<void> doAction(AttendanceDoctorDetailsAction action) async {
    switch (action) {
      case GetAttendanceDoctorWeekDetailsAction():
        return await _getAttendanceWeekDetails(action.courseId, action.weekId);
    }
  }

  List<AttendanceWeekDetailsEntity> _attendanceWeekDetails = [];
  List<AttendanceWeekDetailsEntity> get attendanceWeekDetails =>
      _attendanceWeekDetails;
  Future<void> _getAttendanceWeekDetails(String courseId, String weekId) async {
    emit(GetAttendanceWeekDetailsLoadingState());
    var result =
        await _getAttendanceWeekDetailsUseCase.invoke(courseId, weekId);
    switch (result) {
      case Success<List<AttendanceWeekDetailsEntity>>():
        _attendanceWeekDetails = result.data ?? [];
        emit(GetAttendanceWeekDetailsSuccessState());
      case Failures<List<AttendanceWeekDetailsEntity>>():
        emit(GetAttendanceWeekDetailsErrorState(result.exception));
    }
  }

  bool isLecturePresent(int index) =>
      _attendanceWeekDetails[index].isPresent ?? false;

}
