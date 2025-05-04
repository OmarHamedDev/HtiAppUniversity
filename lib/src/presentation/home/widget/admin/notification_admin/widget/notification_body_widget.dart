import 'package:flutter/material.dart';
import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import 'notification_admin_list_widget.dart' show NotificationAdminListWidget;

class NotificationBodyWidget extends StatelessWidget {
  const NotificationBodyWidget({super.key});

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
          NotificationAdminListWidget(),
        ],
      ),
    );
  }
}
