import 'package:flutter/material.dart';
import '../../../../../../../config/routes/page_route_name.dart';
import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../widgets/icon_action_app_bar_widget.dart';

class AdminHeaderWidget extends StatelessWidget {
  const AdminHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Welcome, ${"Admin"}',
          style: AppFonts.font20kBlackWeight500Inter,
        ),
        const Spacer(),
        InkWell(
          onTap: () => _navigateToNotificationScreen(context),
          child: IconActionAppBarWidget(
            icon: Icons.notifications_outlined,
          ),
        ),
        horizontalSpace(4),
      ],
    );
  }

  void _navigateToNotificationScreen(BuildContext context) {
    Navigator.pushNamed(context, PageRouteName.adminNotification);
  }
}
