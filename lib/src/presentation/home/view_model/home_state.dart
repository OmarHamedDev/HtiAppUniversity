part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}


class GetHomeLoadingState extends HomeState {}
class GetHomeSuccessState extends HomeState {}
class GetHomeErrorState extends HomeState {
  final Exception exception;
  GetHomeErrorState({required this.exception});
}


