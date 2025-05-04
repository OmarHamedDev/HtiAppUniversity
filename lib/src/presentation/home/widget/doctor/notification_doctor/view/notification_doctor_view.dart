import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/core/utils/functions/handle_state/handle_state.dart';
import 'package:hti_univerity/core/utils/widget/base_scaffold.dart';
import '../../../../../../../dependency_inversion/di.dart';
import '../../../../../widgets/bottom_back_widget.dart';
import '../../../admin/notification_admin/view_model/admin_notification_action.dart';
import '../view_model/doctor_notification_action.dart';
import '../view_model/doctor_notification_cubit.dart';
import '../widget/notification_body_widget.dart';

class NotificationDoctorView extends StatefulWidget {
  const NotificationDoctorView({super.key});

  @override
  State<NotificationDoctorView> createState() => _NotificationDoctorViewState();
}

class _NotificationDoctorViewState extends State<NotificationDoctorView> {
  var doctorNotificationCubit = getIt.get<DoctorNotificationCubit>();
  @override
  void initState() {
    doctorNotificationCubit.doAction(GetAllDoctorNotificationAction(id: "1"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => doctorNotificationCubit,
      child: BaseScaffold(
          child: Scaffold(
        appBar: AppBar(
          leading: const BottomBackWidget(),
        ),
        body: BlocBuilder<DoctorNotificationCubit, DoctorNotificationState>(
          builder: (context, state) {
            return _handleBlocBuilder(context, state);
          },
        ),
      )),
    );
  }

  Widget _handleBlocBuilder(
      BuildContext context, DoctorNotificationState state) {
    if (state is GetAllDoctorNotificationLoadingState) {
      return HandleState.loading();
    } else if (state is GetAllDoctorNotificationErrorState) {
      return HandleState.error(state.exception);
    } else {
      return HandleState.emptyList(
        child: NotificationBodyWidget(),
        list: doctorNotificationCubit.doctorNotification,
        message: "No Notification Doctor Available",
      );
    }
  }
}
