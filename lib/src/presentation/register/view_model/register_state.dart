part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

class RegisterLoadingState extends RegisterState {}
class RegisterSuccessState extends RegisterState {}
class RegisterErrorState extends RegisterState {
  final String message;
  RegisterErrorState(this.message);
}


class NavigateToLoginScreenState extends RegisterState {}
class NavigateToBaseScreenState extends RegisterState {}
class NavigateToHomeScreenState extends RegisterState {}
class ChangePasswordVisibilityState extends RegisterState {}
class ChangeConfirmPasswordVisibilityState extends RegisterState {}
class UpdateTabState extends RegisterState {}