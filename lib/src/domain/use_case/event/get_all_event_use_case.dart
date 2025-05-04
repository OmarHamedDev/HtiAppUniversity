import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';
import '../../entities/event_entity.dart';
import '../../repository/event_repository.dart';

@injectable
class GetAllEventUseCase {
  final EventRepository eventRepository;
  GetAllEventUseCase(this.eventRepository);
  Future<Result<List<EventEntity>>> invoke() async {
    return await eventRepository.getAllEvents();
  }
}
