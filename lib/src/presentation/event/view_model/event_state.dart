part of 'event_cubit.dart';

@immutable
sealed class EventState {}

final class EventInitial extends EventState {}


class GetAllEventLoadingState extends EventState {}
class GetAllEventSuccessState extends EventState {}
class GetAllEventErrorState extends EventState {
  final Exception exception;
  GetAllEventErrorState(this.exception);
}


class UploadImageState extends EventState {}
class CreateEventLoadingState extends EventState {}
class CreateEventSuccessState extends EventState {}
class CreateEventErrorState extends EventState {
  final Exception exception;
  CreateEventErrorState(this.exception);
}