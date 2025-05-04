import 'dart:io';

import '../../../core/api/network/common/result.dart';
import '../entities/event_entity.dart';

abstract class EventRepository {
  Future<Result<List<EventEntity>>> getAllEvents();
  Future<Result<String>> createEvent({
    required String title,
    required String description,
  });
}