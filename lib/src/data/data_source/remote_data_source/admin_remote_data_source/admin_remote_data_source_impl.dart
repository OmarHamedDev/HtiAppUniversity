import 'package:hti_univerity/src/data/mappers/admin_mapper.dart';
import 'package:hti_univerity/src/domain/entities/admin_notifcition_count.dart';
import 'package:hti_univerity/src/domain/entities/faculty_count_entity.dart';
import 'package:hti_univerity/src/domain/entities/notification_entity.dart';
import 'package:hti_univerity/src/domain/entities/sudent_count_entity.dart';
import 'package:injectable/injectable.dart';

import '../../../api/api_manger.dart';
import 'admin_remote_data_source.dart';

@Injectable(as: AdminRemoteDataSource)
class AdminRemoteDataSourceImpl implements AdminRemoteDataSource {
  final ApiManger _apiManger;
  final AdminMapper _adminMapper;
  AdminRemoteDataSourceImpl(this._apiManger, this._adminMapper);
  @override
  Future<AdminNotificationCount> getAdminNotificationCount() async {
    final response = await _apiManger.getAdminNotificationCount();
    return _adminMapper
        .mapAdminNotificationCountResponseToAdminNotificationCount(response);
  }

  @override
  Future<FacultyCountEntity> getFacultyCount() async {
    var response = await _apiManger.getFacultyCount();
    return _adminMapper.mapFacultyCountResponseToFacultyCountEntity(response);
  }

  @override
  Future<List<StudentCountEntity>> getStudentCount() async {
    var response = await _apiManger.getStudentCount();
    return _adminMapper.mapStudentCountResponseToStudentCountEntity(response);
  }

  @override
  Future<List<NotificationEntity>> getAllAdminNotification() async {
    var response = await _apiManger.getAllAdminNotification();
    return _adminMapper.mapNotificationResponseToNotificationEntity(response);
  }
}
