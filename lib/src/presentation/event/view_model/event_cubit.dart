import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/core/service/image_picker_service/image_picker_service.dart';
import 'package:hti_univerity/src/domain/entities/event_entity.dart';
import 'package:hti_univerity/src/domain/use_case/event/get_all_event_use_case.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

import '../../../../core/service/image_picker_service/image_source_type.dart';
import '../../../domain/use_case/event/create_post_event_use_case.dart';
import 'event_action.dart';

part 'event_state.dart';

@injectable
class EventCubit extends Cubit<EventState> {
  final GetAllEventUseCase _getAllEventUseCase;
  final ImagePickerService _imagePickerService;
  final CreatePostEventUseCase _createPostEventUseCase;

  EventCubit(this._getAllEventUseCase, this._imagePickerService,
      this._createPostEventUseCase)
      : super(EventInitial());

  Future<void> doAction(EventAction eventAction) async {
    switch (eventAction) {
      case GetAllEventAction():
        return _getAllEvent();
    }
  }

  List<EventEntity> _events = [];

  List<EventEntity> get events => _events;

  Future<void> _getAllEvent() async {
    emit(GetAllEventLoadingState());
    final result = await _getAllEventUseCase.invoke();
    switch (result) {
      case Success<List<EventEntity>>():
        _events = result.data;
        emit(GetAllEventSuccessState());
      case Failures<List<EventEntity>>():
        emit(GetAllEventErrorState(result.exception));
    }
  }

  String formatEventMessage(EventEntity event) {
    final formattedDate = DateFormat('d MMMM y - hh:mm a')
        .format(DateTime.parse(event.createdAt));
    return "📅 You have an event titled \"${event.title}\" in ${event.description} on $formattedDate. Prepare well!";
  }
}
