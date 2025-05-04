import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/src/presentation/home/widget/doctor/notification_doctor/widget/item_notification_doctor_widget.dart';
import '../../../../../widgets/status_widget/week_dividier_widget.dart';
import '../view_model/doctor_notification_cubit.dart';

class NotificationDoctorListWidget extends StatelessWidget {
  const NotificationDoctorListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var doctorNotificationCubit = context.read<DoctorNotificationCubit>();
    var doctorNotificationList = doctorNotificationCubit.doctorNotification;
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return ItemNotificationDoctorWidget(
              title: doctorNotificationList[index].title ??
                  "New Student Application",
              description: doctorNotificationList[index].message ??
                  "New Student Application",
              createdAt: "22/12/2022",
            );
          },
          separatorBuilder: (context, index) => WeekDividerWidget(),
          itemCount: doctorNotificationList.length),
    );
  }
}
