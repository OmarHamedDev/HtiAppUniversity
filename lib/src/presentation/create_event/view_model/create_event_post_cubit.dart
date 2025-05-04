import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/src/presentation/event/view_model/event_action.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/api/network/common/result.dart';
import '../../../../core/service/image_picker_service/image_picker_service.dart';
import '../../../domain/use_case/event/create_post_event_use_case.dart';
import 'create_event_post_state.dart';

@injectable
class CreateEventPostCubit extends Cubit<CreateEventPostState> {
  final CreatePostEventUseCase _createPostEventUseCase;

  CreateEventPostCubit(this._createPostEventUseCase)
      : super(CreateEventPostInitial());

  Future<void> doAction(EventAction eventAction) async {
    switch (eventAction) {
      case GetAllEventAction():
        return await _createPostEvent();
    }
  }

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  Future<void> _createPostEvent() async {
    if (formKey.currentState!.validate()) {
      emit(CreateEventPostLoadingState());
      final result = await _createPostEventUseCase.invoke(
        title: titleController.text,
        description: "description",
      );
      switch (result) {
        case Success<String>():
          emit(CreateEventPostSuccessState());
        case Failures<String>():
          emit(CreateEventPostErrorState(result.exception));
      }
    }
  }
}
