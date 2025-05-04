import 'package:hti_univerity/src/data/api/api_manger.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/entities/event_entity.dart';
import '../../../api/upload_apI_manger.dart';
import '../../../mappers/event_mapper.dart';
import 'event_remote_data_source.dart';

@Injectable(as: EventRemoteDataSource)
class EventRemoteDataSourceImpl implements EventRemoteDataSource {
  final ApiManger _apiManger;
  final UploadApiManger _uploadApiManger;
  final EventMapperAbstract _eventMapper;
  EventRemoteDataSourceImpl(
      this._apiManger, this._eventMapper, this._uploadApiManger);
  @override
  Future<List<EventEntity>> getEvents() async {
    var eventResponse = await _apiManger.getAllEvent();
    return _eventMapper.mapEventResponseToEventEntity(
        eventResponse: eventResponse);
  }

  @override
  Future<String> createEvent(
      {
      required String title,
      required String description}) async {
    var eventResponse = await _apiManger.createEvent( title, description);
    return eventResponse.message ?? "Something went wrong";
  }
}
