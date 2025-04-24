part of 'attendance_student_cubit.dart';

@immutable
sealed class AttendanceStudentState {}

final class AttendanceStudentInitial extends AttendanceStudentState {}

class GetAttendanceStudentLoadingState extends AttendanceStudentState {}
class GetAttendanceStudentSuccessState extends AttendanceStudentState {}
class GetAttendanceStudentErrorState extends AttendanceStudentState {
  final Exception exception;
  GetAttendanceStudentErrorState({required this.exception});
}

