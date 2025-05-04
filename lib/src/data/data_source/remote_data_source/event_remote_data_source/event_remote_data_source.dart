import '../../../../domain/entities/event_entity.dart';

abstract class EventRemoteDataSource {
  Future<List<EventEntity>> getEvents();
  Future<String> createEvent({
    required String title,
    required String description,
  });
}
