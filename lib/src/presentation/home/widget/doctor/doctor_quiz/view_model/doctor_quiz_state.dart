part of 'doctor_quiz_cubit.dart';

@immutable
sealed class DoctorQuizState {}

class DoctorQuizInitial extends DoctorQuizState {}
class AddDoctorQuizLoadingState extends DoctorQuizState {}
class AddDoctorQuizSuccessState extends DoctorQuizState {}
class AddDoctorQuizFailureState extends DoctorQuizState {
  final Exception exception;
  AddDoctorQuizFailureState(this.exception);
}