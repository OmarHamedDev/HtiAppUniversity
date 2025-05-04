import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/styles/fonts/app_fonts.dart';

import '../../../../../../../config/routes/page_route_name.dart';
import '../../../../../../../core/styles/colors/app_colors.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../../../../widgets/icon_action_app_bar_widget.dart';

class DoctorHeaderWidget extends StatelessWidget {
  const DoctorHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _navigateToNotificationScreen(context);
      },
      child: Row(
        children: [
          Text(
            'Welcome, ${"Doctor"}',
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
      ),
    );
  }

  void _navigateToNotificationScreen(BuildContext context) {
    Navigator.pushNamed(context, PageRouteName.doctorNotification);
  }
}
