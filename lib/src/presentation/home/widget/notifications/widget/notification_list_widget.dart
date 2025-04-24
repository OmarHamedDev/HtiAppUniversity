import 'package:flutter/material.dart';
import '../../../../widgets/event_notification_Item_widget.dart';

class NotificationListWidget extends StatelessWidget {
  const NotificationListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return EventNotificationItemWidget();
          },
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Divider(
                color: Colors.grey.withOpacity(0.5),
                height: 1,
              ),
            );
          },
          itemCount: 10),
    );
  }
}
