import 'package:hti_univerity/src/domain/repository/admin_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/network/common/result.dart';
import '../../entities/admin_notifcition_count.dart';

@injectable
class GetAdminNotificationCountUseCase {
  final AdminRepository _adminRepository;
  GetAdminNotificationCountUseCase(this._adminRepository);
  Future<Result<AdminNotificationCount>> invoke() async {
    return await _adminRepository.getAdminNotificationCount();
  }

}