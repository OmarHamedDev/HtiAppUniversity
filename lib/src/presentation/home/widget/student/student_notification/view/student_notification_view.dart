import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/extension/extension.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import '../../../../../../../core/utils/functions/handle_state/handle_state.dart';
import '../../../../../../../dependency_inversion/di.dart';
import '../../../../../widgets/bottom_back_widget.dart';
import '../view_model/student_notification_action.dart';
import '../view_model/student_notification_cubit.dart';
import '../widget/student_notification_body_widget.dart';

class StudentNotificationView extends StatefulWidget {
  const StudentNotificationView({super.key});

  @override
  State<StudentNotificationView> createState() =>
      _StudentNotificationViewState();
}

class _StudentNotificationViewState extends State<StudentNotificationView> {
  var studentNotificationCubit = getIt<StudentNotificationCubit>();
  @override
  void initState() {
    studentNotificationCubit.doAction(
      GetAllStudentNotificationAction(
          studentId:"2003"),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => studentNotificationCubit,
      child: BaseScaffold(
          child: Scaffold(
              appBar: AppBar(
                leading: const BottomBackWidget(),
              ),
              body:BlocBuilder<StudentNotificationCubit, StudentNotificationState>(
                builder: (context, state) {
                  return _handleBlocBuilder(context, state);
                },
              ))),
    );
  }


  Widget _handleBlocBuilder(
      BuildContext context, StudentNotificationState state) {
    if (state is GetAllStudentNotificationLoadingState) {
      return HandleState.loading();
    } else if (state is GetAllStudentNotificationErrorState) {
      return HandleState.error(state.exception);
    } else {
      return HandleState.emptyList(
        child: StudentNotificationBodyWidget(),
        list: studentNotificationCubit.notificationEntity,
        message: "No Notification Available",
      );
    }
  }}
