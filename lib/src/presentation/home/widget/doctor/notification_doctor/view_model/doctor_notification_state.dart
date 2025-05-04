part of 'doctor_notification_cubit.dart';

@immutable
sealed class DoctorNotificationState {}

final class DoctorNotificationInitial extends DoctorNotificationState {}

class GetAllDoctorNotificationLoadingState extends DoctorNotificationState {}
class GetAllDoctorNotificationErrorState extends DoctorNotificationState {
  final Exception exception;
  GetAllDoctorNotificationErrorState({required this.exception});
}
class GetAllDoctorNotificationSuccessState extends DoctorNotificationState {}