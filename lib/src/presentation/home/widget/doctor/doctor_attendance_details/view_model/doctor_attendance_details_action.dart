sealed class AttendanceDoctorDetailsAction {}

class GetAttendanceDoctorWeekDetailsAction extends AttendanceDoctorDetailsAction {
  final String courseId;
  final String weekId;
  GetAttendanceDoctorWeekDetailsAction({required this.courseId,required this.weekId});
}