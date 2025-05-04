import 'package:hti_univerity/core/api/network/common/execute_method.dart';
import 'package:hti_univerity/core/api/network/common/result.dart';
import 'package:hti_univerity/src/data/data_source/remote_data_source/admin_remote_data_source/admin_remote_data_source.dart';
import 'package:hti_univerity/src/domain/entities/admin_notifcition_count.dart';
import 'package:hti_univerity/src/domain/entities/faculty_count_entity.dart';
import 'package:hti_univerity/src/domain/entities/notification_entity.dart';
import 'package:hti_univerity/src/domain/entities/sudent_count_entity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/admin_repository.dart';

@Injectable(as: AdminRepository)
class AdminRepositoryImpl implements AdminRepository {
  final AdminRemoteDataSource _adminRemoteDataSource;
  AdminRepositoryImpl(this._adminRemoteDataSource);
  @override
  Future<Result<AdminNotificationCount>> getAdminNotificationCount() async {
    return executeMethod<AdminNotificationCount>(
      callMethod: () async {
        var adminNotificationCount =
            await _adminRemoteDataSource.getAdminNotificationCount();
        return adminNotificationCount;
      },
    );
  }

  @override
  Future<Result<FacultyCountEntity>> getFacultyCount() async {
    return executeMethod<FacultyCountEntity>(
      callMethod: () async {
        var facultyCount = await _adminRemoteDataSource.getFacultyCount();
        return facultyCount;
      },
    );
  }

  @override
  Future<Result<List<StudentCountEntity>>> getStudentCount() {
    return executeMethod<List<StudentCountEntity>>(callMethod: () async {
      var studentCount = await _adminRemoteDataSource.getStudentCount();
      return studentCount;
    });
  }

  @override
  Future<Result<List<NotificationEntity>>> getAllAdminNotification() async {
    return executeMethod<List<NotificationEntity>>(callMethod: () async {
      var studentCount = await _adminRemoteDataSource.getAllAdminNotification();
      return studentCount;
    });
  }
}
