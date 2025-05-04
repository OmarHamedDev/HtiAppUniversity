import 'package:flutter/material.dart';
import 'package:hti_univerity/src/presentation/home/widget/student/student_notification/widget/student_notification_list_widget.dart';

import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';

class StudentNotificationBodyWidget extends StatelessWidget {
  const StudentNotificationBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text('Notifications',
              style:AppFonts.font24kBlackWeight500Inter,
              textAlign: TextAlign.center,
            ),
          ),
          verticalSpace(12),
          StudentNotificationListWidget(),
        ],
      ),
    );

  }
}
