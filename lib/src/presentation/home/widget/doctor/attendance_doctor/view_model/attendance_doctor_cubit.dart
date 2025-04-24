import 'package:bloc/bloc.dart';
import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:meta/meta.dart';
import '../../../../../../domain/entities/attendance_week_details_entity.dart';
import '../../../../../../domain/entities/attendance_week_doctor_entity.dart';
import '../../../../../../domain/use_case/doctor_use_case/get_attendance_week_details_use_case.dart';
import '../../../../../../domain/use_case/doctor_use_case/get_attendance_week_doctor_use_case.dart';
import 'attendance_action.dart';

part 'attendance_doctor_state.dart';

class AttendanceDoctorCubit extends Cubit<AttendanceDoctorState> {
  final GetAttendanceWeekDetailsUseCase _getAttendanceWeekDetailsUseCase;
  final GetAttendanceWeekDoctorUseCase _getAttendanceWeekDoctorUseCase;
  AttendanceDoctorCubit(this._getAttendanceWeekDetailsUseCase,
      this._getAttendanceWeekDoctorUseCase)
      : super(AttendanceDoctorInitial());

  Future<void> doAction(AttendanceDoctorAction action) async {
    switch (action) {
      case GetAttendanceAllWeekDoctorAction():
        return await _getAttendanceWeekDoctor(action.courseId);
      case GetAttendanceWeekDetailsAction():
        return await _getAttendanceWeekDetails(action.courseId, action.weekId);
    }
  }

  List<AttendanceWeekDoctorEntity> _attendanceWeekDoctor = [];
  List<AttendanceWeekDoctorEntity> get attendanceWeekDoctor =>
      _attendanceWeekDoctor;
  Future<void> _getAttendanceWeekDoctor(String courseId) async {
    emit(GetAttendanceAllWeekDoctorLoadingState());
    var result = await _getAttendanceWeekDoctorUseCase.invoke(courseId);
    switch (result) {
      case Success<List<AttendanceWeekDoctorEntity>>():
        _attendanceWeekDoctor = result.data ?? [];
        emit(GetAttendanceAllWeekDoctorSuccessState());
      case Failures<List<AttendanceWeekDoctorEntity>>():
        emit(GetAttendanceAllWeekDoctorErrorState(result.exception));
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
}
