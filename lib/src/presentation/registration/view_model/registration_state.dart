part of 'registration_cubit.dart';

@immutable
sealed class RegistrationState {}

final class RegistrationInitial extends RegistrationState {}
class ChangeBodyWidgetState extends RegistrationState {}
class GetRegisteredCourseLoadingState extends RegistrationState {}
class GetRegisteredCourseSuccessState extends RegistrationState {}
class GetRegisteredCourseErrorState extends RegistrationState {
  final Exception exception;
  GetRegisteredCourseErrorState(this.exception);
}

class AddRegisteredCourseLoadingState extends RegistrationState {}
class AddRegisteredCourseSuccessState extends RegistrationState {}
class AddRegisteredCourseErrorState extends RegistrationState {
  final Exception exception;
  AddRegisteredCourseErrorState(this.exception);
}


class RemoveRegisteredCourseLoadingState extends RegistrationState {}
class RemoveRegisteredCourseSuccessState extends RegistrationState {}
class RemoveRegisteredCourseErrorState extends RegistrationState {
  final Exception exception;
  RemoveRegisteredCourseErrorState(this.exception);
}



class GetSuggestedCoursesLoadingState extends RegistrationState {}
class GetSuggestedCoursesSuccessState extends RegistrationState {}
class GetSuggestedCoursesErrorState extends RegistrationState {
  final Exception exception;
  GetSuggestedCoursesErrorState(this.exception);
}