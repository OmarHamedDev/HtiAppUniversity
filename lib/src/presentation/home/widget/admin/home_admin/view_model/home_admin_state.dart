part of 'home_admin_cubit.dart';

@immutable
sealed class HomeAdminState {}

final class HomeAdminInitial extends HomeAdminState {}



class HomeAdminLoadingState extends HomeAdminState {}
class HomeAdminErrorState extends HomeAdminState {
  final Exception exception;
  HomeAdminErrorState({required this.exception});
}
class HomeAdminSuccessState extends HomeAdminState {}