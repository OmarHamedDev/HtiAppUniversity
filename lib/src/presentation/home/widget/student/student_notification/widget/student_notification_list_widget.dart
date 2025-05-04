import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../widgets/status_widget/week_dividier_widget.dart';
import '../view_model/student_notification_cubit.dart';
import 'item_student_notification_widget.dart';

class StudentNotificationListWidget extends StatelessWidget {
  const StudentNotificationListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var studentNotificationCubit = context.read<StudentNotificationCubit>();
    return   Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return  ItemStudentNotificationWidget(
              fileUrl: studentNotificationCubit.notificationEntity[index].fileUrl ?? "",
              title: studentNotificationCubit.notificationEntity[index].title ?? "Course Schedule",
              description: studentNotificationCubit.notificationEntity[index].message ?? "Course Schedule",
              createdAt: "2023-10-01", //
            );
          }, separatorBuilder : (context, index) => WeekDividerWidget(),
          itemCount: studentNotificationCubit.notificationEntity.length),
    );
  }
}
