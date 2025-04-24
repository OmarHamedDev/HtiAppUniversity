import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/utils/functions/spaceing/spaceing.dart';
import 'package:hti_univerity/src/presentation/widgets/icon_action_app_bar_widget.dart';

import '../../../../../../../config/routes/page_route_name.dart';
import '../../../../../../../core/styles/fonts/app_fonts.dart';

class AdminHeaderWidget extends StatelessWidget {
  const AdminHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Text(
          'Welcome, ${ "Admin"}',
          style: AppFonts.font20kBlackWeight500Inter,
        ),
        const Spacer(),
        IconActionAppBarWidget(icon: Icons.add, ),
        horizontalSpace(4),
        IconActionAppBarWidget(icon: Icons.notifications_outlined, ),
        horizontalSpace(4),
      ],
    );
  }


  void _navigateToNotificationScreen(BuildContext context) {
    Navigator.pushNamed(context, PageRouteName.notification);
  }
}
