sealed class RegistrationAction {}
class GetRegisteredCourseAction extends RegistrationAction {
  final String studentId;
  GetRegisteredCourseAction({required this.studentId});
}


class RemoveRegisteredCourseAction extends RegistrationAction {
  final String studentId;
  final int  courseId;
  RemoveRegisteredCourseAction({required this.studentId, required this.courseId});
}

class AddRegisteredCourseAction extends RegistrationAction {
  final int studentId;
  final int courseId;
  final int  groupId;
  AddRegisteredCourseAction({required  this.groupId, required this.studentId, required this.courseId});
}
class GetSuggestedCoursesAction extends RegistrationAction {
  final String studentId;
  GetSuggestedCoursesAction({required this.studentId});
}