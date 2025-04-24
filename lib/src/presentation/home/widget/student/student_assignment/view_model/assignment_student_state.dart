part of 'assignment_student_cubit.dart';
@immutable
sealed class AssignmentStudentState {}

final class AssignmentStudentInitial extends AssignmentStudentState {}


class GetAssignmentStudentLoadingState extends AssignmentStudentState {}

class GetAssignmentStudentSuccessState extends AssignmentStudentState {}

class GetAssignmentStudentErrorState extends AssignmentStudentState {
  final Exception exception;
  GetAssignmentStudentErrorState({required this.exception});
}