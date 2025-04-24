sealed class StudentAttendanceAction {}

class GetStudentAttendanceAction extends StudentAttendanceAction{
  final String studentId;
  final String courseId;
  GetStudentAttendanceAction({required this.studentId,required this.courseId});
}