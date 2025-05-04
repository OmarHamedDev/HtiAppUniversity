sealed class CreateEventPostState {}

final class CreateEventPostInitial extends CreateEventPostState {}

class UploadImageState extends CreateEventPostState {}

class CreateEventPostLoadingState extends CreateEventPostState {}

class CreateEventPostSuccessState extends CreateEventPostState {}

class CreateEventPostErrorState extends CreateEventPostState {
  final Exception exception;
  CreateEventPostErrorState(this.exception);
}
