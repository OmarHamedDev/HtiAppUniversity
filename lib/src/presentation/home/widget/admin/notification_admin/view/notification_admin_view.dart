import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/utils/functions/handle_state/handle_state.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import '../../../../../../../dependency_inversion/di.dart';
import '../../../../../widgets/bottom_back_widget.dart';
import '../view_model/admin_notification_action.dart';
import '../view_model/admin_notification_cubit.dart';
import '../widget/notification_body_widget.dart';

class NotificationAdminView extends StatefulWidget {
  const NotificationAdminView({super.key});

  @override
  State<NotificationAdminView> createState() => _NotificationAdminViewState();
}

class _NotificationAdminViewState extends State<NotificationAdminView> {
  var adminNotificationCubit = getIt.get<AdminNotificationCubit>();
  @override
  void initState() {
    adminNotificationCubit.doAction(GetAllAdminNotificationAction());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => adminNotificationCubit,
      child: BaseScaffold(
          child: Scaffold(
        appBar: AppBar(
          leading: const BottomBackWidget(),
        ),
        body: BlocBuilder<AdminNotificationCubit, AdminNotificationState>(
          builder: (context, state) {
            return _handleBlocBuilder(context, state);
          },
        ),
      )),
    );
  }

  Widget _handleBlocBuilder(
      BuildContext context, AdminNotificationState state) {
    if (state is GetAllAdminNotificationLoadingState) {
      return HandleState.loading();
    } else if (state is GetAllAdminNotificationErrorState) {
      return HandleState.error(state.exception);
    } else {
      return  HandleState.emptyList(
        child: NotificationBodyWidget(),
        list: adminNotificationCubit.notificationEntity,
        message: "No Notification Available",
      );

  }


  }
}
