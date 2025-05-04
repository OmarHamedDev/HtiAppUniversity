import 'package:bloc/bloc.dart';
import 'package:hti_univerity/src/presentation/home/widget/student/student_notification/view_model/student_notification_action.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../../../core/api/network/common/result.dart';
import '../../../../../../domain/entities/notification_entity.dart';
import '../../../../../../domain/use_case/student/get_notification_student_use_case.dart';

part 'student_notification_state.dart';

@injectable
class StudentNotificationCubit extends Cubit<StudentNotificationState> {
  final GetNotificationStudentUseCase _getNotificationStudentUseCase;
  StudentNotificationCubit(this._getNotificationStudentUseCase)
      : super(StudentNotificationInitial());

  Future<void> doAction(StudentNotificationAction action) async {
    if (action is GetAllStudentNotificationAction) {
      return await _getAllStudentNotification(
        studentId: action.studentId,
      );
    }
  }

  List<NotificationEntity> _notificationEntity = [];
  List<NotificationEntity> get notificationEntity => _notificationEntity;
  Future<void> _getAllStudentNotification({required String studentId}) async {
    emit(GetAllStudentNotificationLoadingState());
    final result =
        await _getNotificationStudentUseCase.invoke(studentId: studentId);
    switch (result) {
      case Success<List<NotificationEntity>>():
        _notificationEntity = result.data;
        emit(GetAllStudentNotificationSuccessState());
      case Failures<List<NotificationEntity>>():
        emit(GetAllStudentNotificationErrorState(
          exception: result.exception,
        ));
    }
  }
}
