import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/functions/spaceing/spaceing.dart';
import 'notification_list_widget.dart';

class NotificationBodyWidget extends StatelessWidget {
  const NotificationBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('الإشعارات',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'inter',
                )),
            verticalSpace(12),
            NotificationListWidget(),
          ],
        ));
  }
}
