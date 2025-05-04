part of 'student_notification_cubit.dart';

@immutable
sealed class StudentNotificationState {}

final class StudentNotificationInitial extends StudentNotificationState {}
class GetAllStudentNotificationLoadingState extends StudentNotificationState {}
class GetAllStudentNotificationErrorState extends StudentNotificationState {
  final Exception exception;
  GetAllStudentNotificationErrorState({required this.exception});
}
class  GetAllStudentNotificationSuccessState extends StudentNotificationState {}