import 'package:bloc/bloc.dart';
import 'package:hti_univerity/src/domain/entities/doctor_notification_submission_entity.dart';
import 'package:hti_univerity/src/domain/entities/notification_entity.dart';
import 'package:hti_univerity/src/domain/use_case/admin_use_case/get_all_admin_notification_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../../../core/api/network/common/result.dart';
import '../../../../../../domain/use_case/doctor_use_case/get_all_doctor_notification_submission_use_case.dart';
import 'doctor_notification_action.dart';

part 'doctor_notification_state.dart';

@injectable
class DoctorNotificationCubit extends Cubit<DoctorNotificationState> {
  final GetAllDoctorNotificationSubmissionUseCase _allDoctorNotificationSubmissionUseCase;
  DoctorNotificationCubit(this._allDoctorNotificationSubmissionUseCase)
      : super(DoctorNotificationInitial());
  Future<void> doAction(DoctorNotificationAction action) async {
    if (action is GetAllDoctorNotificationAction) {
      return await _getAllAdminNotification(id: action.id);
    }
  }

  List<DoctorNotificationSubmissionEntity> _doctorNotification = [];
  List<DoctorNotificationSubmissionEntity> get doctorNotification => _doctorNotification;
  Future<void> _getAllAdminNotification({required String id}) async {
    emit(GetAllDoctorNotificationLoadingState());
    final result = await _allDoctorNotificationSubmissionUseCase.invoke(id: id);
   switch (result) {
     case Success<List<DoctorNotificationSubmissionEntity>>():
       _doctorNotification = result.data ?? [];
        emit(GetAllDoctorNotificationSuccessState());
     case Failures<List<DoctorNotificationSubmissionEntity>>():
        emit(GetAllDoctorNotificationErrorState(exception: result.exception));
   }
  }
}
