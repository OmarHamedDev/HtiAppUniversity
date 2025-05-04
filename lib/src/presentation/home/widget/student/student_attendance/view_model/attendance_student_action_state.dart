sealed class StudentAttendanceAction {}

class GetStudentAttendanceAction extends StudentAttendanceAction{
  final String courseId;
  GetStudentAttendanceAction({required this.courseId});
}