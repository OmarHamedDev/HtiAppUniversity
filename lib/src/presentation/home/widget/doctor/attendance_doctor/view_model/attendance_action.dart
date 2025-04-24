sealed class AttendanceDoctorAction {}
class GetAttendanceAllWeekDoctorAction extends AttendanceDoctorAction {
  final String courseId;
  GetAttendanceAllWeekDoctorAction(this.courseId);
}

class GetAttendanceWeekDetailsAction extends AttendanceDoctorAction {
  final String courseId;
  final String weekId;
  GetAttendanceWeekDetailsAction(this.courseId, this.weekId);
}