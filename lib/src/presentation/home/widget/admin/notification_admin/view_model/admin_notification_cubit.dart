import 'package:bloc/bloc.dart';
import 'package:hti_univerity/src/domain/entities/notification_entity.dart';
import 'package:hti_univerity/src/domain/use_case/admin_use_case/get_all_admin_notification_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../../../core/api/network/common/result.dart';
import 'admin_notification_action.dart';

part 'admin_notification_state.dart';

@injectable
class AdminNotificationCubit extends Cubit<AdminNotificationState> {
  final GetAllAdminNotificationUseCase _adminNotificationUseCase;
  AdminNotificationCubit(this._adminNotificationUseCase)
      : super(AdminNotificationInitial());
  Future<void> doAction(AdminNotificationAction action) async {
    if (action is GetAllAdminNotificationAction) {
      return await _getAllAdminNotification();
    }
  }

  List<NotificationEntity> _notificationEntity = [];
  List<NotificationEntity> get notificationEntity => _notificationEntity;
  Future<void> _getAllAdminNotification() async {
    emit(GetAllAdminNotificationLoadingState());
    final result = await _adminNotificationUseCase.invoke();
    switch (result) {
      case Success<List<NotificationEntity>>():
        _notificationEntity = result.data;
        emit(GetAllAdminNotificationSuccessState());
      case Failures<List<NotificationEntity>>():
        emit(GetAllAdminNotificationErrorState(exception: result.exception));
    }
  }
}
