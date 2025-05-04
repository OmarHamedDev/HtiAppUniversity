sealed class AttendanceDoctorAction {}
class GetAttendanceAllWeekDoctorAction extends AttendanceDoctorAction {
  final String courseId;
  GetAttendanceAllWeekDoctorAction(this.courseId);
}

