part of 'home_doctor_cubit.dart';

@immutable
sealed class HomeDoctorState {}

final class HomeDoctorInitial extends HomeDoctorState {}

class GetHomeDoctorLoadingState extends HomeDoctorState {}

class GetHomeDoctorSuccessState extends HomeDoctorState {}

class GetHomeDoctorErrorState extends HomeDoctorState {
  final Exception exception;
  GetHomeDoctorErrorState({required this.exception});
}
