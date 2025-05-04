part of 'doctor_assignment_cubit.dart';

@immutable
sealed class DoctorAssignmentState {}

final class DoctorAssignmentInitial extends DoctorAssignmentState {}
class CreateDoctorAssignmentLoading extends DoctorAssignmentState {}
class CreateDoctorAssignmentSuccess extends DoctorAssignmentState {}
class CreateDoctorAssignmentError extends DoctorAssignmentState {
  final Exception exception;
  CreateDoctorAssignmentError(this.exception);
}