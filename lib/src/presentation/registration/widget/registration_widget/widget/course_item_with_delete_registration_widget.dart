import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/styles/colors/app_colors.dart';
import '../../../../../../core/styles/fonts/app_fonts.dart';

class CourseItemWithDeleteRegistrationWidget extends StatelessWidget {
  final String? courseName;
  final VoidCallback? onPressed;
  const CourseItemWithDeleteRegistrationWidget(
      {super.key, this.courseName, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(courseName ?? "", style: AppFonts.font16kBlackWeight500Inter),
      const Spacer(),
      InkWell(
        onTap: onPressed,
        child: Icon(
          Icons.delete_outline_rounded,
          size: 25.sp,
          color: AppColors.kBlack,
        ),
      ),
    ]);
  }
}
