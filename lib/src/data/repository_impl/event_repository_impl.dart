import 'dart:io';

import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/data/data_source/remote_data_source/event_remote_data_source/event_remote_data_source.dart';
import 'package:hti_univerity/src/domain/entities/event_entity.dart';
import 'package:injectable/injectable.dart';

import '../../../core/api/network/common/execute_method.dart';
import '../../domain/repository/event_repository.dart';

@Injectable(as: EventRepository)
class EventRepositoryImpl implements EventRepository {
  final EventRemoteDataSource _eventRemoteDataSource;
  EventRepositoryImpl(this._eventRemoteDataSource);
  @override
  Future<Result<List<EventEntity>>> getAllEvents() async {
    return executeMethod<List<EventEntity>>(
      callMethod: () async {
        var result = await _eventRemoteDataSource.getEvents();
        return result;
      },
    );
  }

  @override
  Future<Result<String>> createEvent(
      {
      required String title,
      required String description}) async {
    return executeMethod<String>(callMethod: () async {
      var result = await _eventRemoteDataSource.createEvent(
          title: title, description: description);
      return result;
    });
  }
}
