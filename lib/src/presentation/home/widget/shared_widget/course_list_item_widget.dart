import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/styles/colors/app_colors.dart';
import '../../../../../core/styles/fonts/app_fonts.dart';

class CourseListItemWidget extends StatelessWidget {
  final String  title;
  const CourseListItemWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.0.h),
      child: Row(children: [
        Text(title.toString() ?? "",
            style: AppFonts.font16kBlackWeight400Inter),
        const Spacer(),
        Icon(
          Icons.format_list_bulleted,
          size: 20.sp,
          color: AppColors.kBlack,
        ),
      ]),
    );
  }
}
