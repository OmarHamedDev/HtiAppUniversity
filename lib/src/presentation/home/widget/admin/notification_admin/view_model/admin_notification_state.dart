part of 'admin_notification_cubit.dart';

@immutable
sealed class AdminNotificationState {}

final class AdminNotificationInitial extends AdminNotificationState {}

class GetAllAdminNotificationLoadingState extends AdminNotificationState {}
class GetAllAdminNotificationErrorState extends AdminNotificationState {
  final Exception exception;
  GetAllAdminNotificationErrorState({required this.exception});
}
class GetAllAdminNotificationSuccessState extends AdminNotificationState {}