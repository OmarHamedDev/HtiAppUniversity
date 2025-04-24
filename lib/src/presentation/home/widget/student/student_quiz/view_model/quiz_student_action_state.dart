sealed class QuizStudentActionState {}
class GetQuizStudentAction extends QuizStudentActionState{
  final String studentId;
  final String courseId;
  GetQuizStudentAction({required this.studentId, required this.courseId});

}