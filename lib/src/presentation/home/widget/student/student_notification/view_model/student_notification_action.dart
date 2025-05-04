sealed class StudentNotificationAction {}

class GetAllStudentNotificationAction extends StudentNotificationAction {
  final String studentId;
  GetAllStudentNotificationAction({required this.studentId});
}
