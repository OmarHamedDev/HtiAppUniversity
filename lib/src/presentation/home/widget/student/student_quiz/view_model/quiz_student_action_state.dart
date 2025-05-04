sealed class QuizStudentActionState {}
class GetQuizStudentAction extends QuizStudentActionState{
  final String courseId;
  GetQuizStudentAction({ required this.courseId});

}