import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/styles/fonts/app_fonts.dart';
import '../../widgets/icon_action_app_bar_widget.dart';

class UserEventWidget extends StatelessWidget {
  const UserEventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: IconActionAppBarWidget(
          width: 38.w,
          height: 38.h,
          iconSize: 24.sp,
          padding: 0.0,
          icon: Icons.person_outline),
      title: Text(
        'OmarHamedMakram',
        textAlign: TextAlign.start,
        style: AppFonts.font12kGrayWeight600Inter,
      ),
    );
  }
}
