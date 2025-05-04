import 'package:hti_univerity/src/domain/entities/notification_entity.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';
import '../../repository/admin_repository.dart';

@injectable
class GetAllAdminNotificationUseCase {
  final AdminRepository _adminRepository;
  GetAllAdminNotificationUseCase(this._adminRepository);
  Future<Result<List<NotificationEntity>>> invoke() async {
    return await _adminRepository.getAllAdminNotification();
  }

}