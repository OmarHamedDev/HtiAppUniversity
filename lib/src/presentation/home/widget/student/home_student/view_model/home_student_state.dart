part of 'home_student_cubit.dart';

@immutable
sealed class HomeStudentState {}

final class HomeStudentInitial extends HomeStudentState {}
class GetHomeStudentLoadingState extends HomeStudentState {}
class GetHomeStudentSuccessState extends HomeStudentState {}
class GetHomeStudentErrorState extends HomeStudentState {
  final Exception exception;
  GetHomeStudentErrorState({required this.exception});
}

