import 'package:hti_univerity/src/data/model/response/event_response_model/event_response_model.dart';
import 'package:hti_univerity/src/domain/entities/event_entity.dart';
import 'package:injectable/injectable.dart';

abstract class EventMapperAbstract {
  List<EventEntity> mapEventResponseToEventEntity(
      {required List<EventResponseModel> eventResponse});
}

@Injectable(as: EventMapperAbstract)
class EventMapperImpl implements EventMapperAbstract {
  @override
  List<EventEntity> mapEventResponseToEventEntity(
      {required List<EventResponseModel> eventResponse}) {
    if (eventResponse.isEmpty) return [];
    return eventResponse
        .map((eventResponse) => EventEntity(
              id: eventResponse.id ?? 0,
              title: eventResponse.title ?? " ",
              description: eventResponse.description ?? " ",
              imageUrl: eventResponse.imageBase64 ?? " ",
              createdAt: eventResponse.createdAt ?? " ",
            ))
        .toList();
  }
}
