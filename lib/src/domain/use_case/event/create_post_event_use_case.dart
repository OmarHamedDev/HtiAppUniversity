import 'dart:io';

import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:injectable/injectable.dart';

import '../../repository/event_repository.dart';

@injectable
class CreatePostEventUseCase {
  final EventRepository _eventRepository;
  CreatePostEventUseCase(this._eventRepository);
  Future<Result<String>> invoke({
    required String title,
    required String description,
  }) {
    return _eventRepository.createEvent(
         title: title, description: description);
  }
}
