part of 'doctor_attendance_details_cubit.dart';
sealed class DoctorAttendanceDetailsState {}

final class DoctorAttendanceDetailsInitial extends DoctorAttendanceDetailsState {}

class GetAttendanceWeekDetailsLoadingState extends DoctorAttendanceDetailsState {}
class GetAttendanceWeekDetailsSuccessState extends DoctorAttendanceDetailsState {}
class GetAttendanceWeekDetailsErrorState extends DoctorAttendanceDetailsState {
  final Exception exception;
  GetAttendanceWeekDetailsErrorState(this.exception);
}