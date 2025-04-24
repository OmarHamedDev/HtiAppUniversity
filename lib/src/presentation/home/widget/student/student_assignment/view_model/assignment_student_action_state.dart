sealed class AssignmentStudentAction {}
class GetAssignmentStudentAction extends AssignmentStudentAction{
  final String studentId;
  final String courseId;
  GetAssignmentStudentAction({required this.studentId, required this.courseId});

}