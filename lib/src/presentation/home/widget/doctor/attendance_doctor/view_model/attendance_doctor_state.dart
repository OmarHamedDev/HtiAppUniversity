part of 'attendance_doctor_cubit.dart';

@immutable
sealed class AttendanceDoctorState {}

final class AttendanceDoctorInitial extends AttendanceDoctorState {}

class GetAttendanceAllWeekDoctorLoadingState extends AttendanceDoctorState {}
class GetAttendanceAllWeekDoctorSuccessState extends AttendanceDoctorState {}
class GetAttendanceAllWeekDoctorErrorState extends AttendanceDoctorState {
  final Exception exception;
  GetAttendanceAllWeekDoctorErrorState(this.exception);

}

class GetAttendanceWeekDetailsLoadingState extends AttendanceDoctorState {}
class GetAttendanceWeekDetailsSuccessState extends AttendanceDoctorState {}
class GetAttendanceWeekDetailsErrorState extends AttendanceDoctorState {
  final Exception exception;
  GetAttendanceWeekDetailsErrorState(this.exception);
}