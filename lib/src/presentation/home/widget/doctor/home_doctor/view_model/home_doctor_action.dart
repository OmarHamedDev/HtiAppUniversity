sealed class HomeDoctorAction {}
class GetHomeDoctorAction extends HomeDoctorAction {
  final String id;
  GetHomeDoctorAction({required this.id});
}