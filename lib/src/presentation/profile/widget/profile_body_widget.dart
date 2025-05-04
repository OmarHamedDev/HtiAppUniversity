import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/src/presentation/profile/widget/section_title_profile_widget.dart';
import 'package:hti_univerity/src/presentation/profile/widget/user_profile_widget.dart';

import '../../../../config/routes/page_route_name.dart';
import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';
import '../../widgets/status_widget/week_dividier_widget.dart';
import 'action_title_profile_widget.dart';
import 'notification_card_profile_widget.dart';

class ProfileBodyWidget extends StatelessWidget {
  const ProfileBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Profile", style: AppFonts.font24kBlackWeight500Inter),
          verticalSpace(12),
          UserProfileWidget(),
          WeekDividerWidget(),
          verticalSpace(4),
          SectionTitleProfileWidget(title: "Profile Management"),
          ActionTitleProfileWidget(
            icon: Icons.lock_outline,
            title: "Change Password",
            onTap: () {
              _navigateToChangePassword(context);
            },
          ),
          WeekDividerWidget(),
          verticalSpace(5),
          SectionTitleProfileWidget(title: "Push Notifications"),
          NotificationCardProfileWidget(),
          WeekDividerWidget(),
          verticalSpace(4),
          SectionTitleProfileWidget(title: "Logout"),
          ActionTitleProfileWidget(
            icon: Icons.logout,
            title: "Logout",
            onTap: () {},
            iconColor: Colors.redAccent,
            textColor: Colors.redAccent,
          ),
        ],
      ),
    );
  }

  void _navigateToChangePassword(BuildContext context) {
    Navigator.pushNamed(context, PageRouteName.changePassword);
  }
}
