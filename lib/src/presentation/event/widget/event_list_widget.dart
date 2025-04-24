import 'package:flutter/material.dart';
import '../../widgets/event_notification_Item_widget.dart';
import '../../widgets/status_widget/week_dividier_widget.dart';
class EventNotificationListWidget extends StatelessWidget {
  const EventNotificationListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context, index) {
      return EventNotificationItemWidget();
    }, separatorBuilder: (context, index) {
      return WeekDividerWidget();
    }, itemCount: 10);
  }
}
