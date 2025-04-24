part of 'quiz_student_cubit.dart';
@immutable
sealed class QuizStudentState {}

final class QuizStudentInitial extends QuizStudentState {}


class GetQuizStudentLoadingState extends QuizStudentState {}

class GetQuizStudentSuccessState extends QuizStudentState {}

class GetQuizStudentErrorState extends QuizStudentState {
  final Exception exception;
  GetQuizStudentErrorState({required this.exception});
}