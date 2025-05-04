sealed class DoctorNotificationAction {}

class GetAllDoctorNotificationAction extends DoctorNotificationAction {
  final String id;
  GetAllDoctorNotificationAction({required this.id});
}
