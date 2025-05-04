import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hti_univerity/src/presentation/home/widget/admin/notification_admin/widget/item_notification_admin_widget.dart';
import '../../../../../widgets/status_widget/week_dividier_widget.dart';
import '../view_model/admin_notification_cubit.dart';

class NotificationAdminListWidget extends StatelessWidget {
  const NotificationAdminListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var adminNotificationCubit = context.read<AdminNotificationCubit>();
    return Expanded(
      child: ListView.separated(itemBuilder: (context, index) {
        return ItemNotificationAdminWidget(title: adminNotificationCubit.notificationEntity[index].title ?? "New Student Application",
            description: adminNotificationCubit.notificationEntity[index].message ?? "New Student Application",
         createdAt: adminNotificationCubit.notificationEntity[index].createdAt ?? "2023-10-01", // TODO: format date
        );
      }, separatorBuilder : (context, index) => WeekDividerWidget(),
          itemCount: adminNotificationCubit.notificationEntity.length),
    );
  }
}
