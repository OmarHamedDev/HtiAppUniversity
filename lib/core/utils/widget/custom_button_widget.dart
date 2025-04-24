import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/colors/app_colors.dart';
import '../../../../core/styles/fonts/app_fonts.dart';

class CustomButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color? color;
  final Color? textColor;
  const CustomButtonWidget(
      {super.key,
      this.onPressed,
      required this.text,
      this.textColor, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335.w,
      height: 48.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kPrimary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),

        ),
        child: Text(
          text,
          style: AppFonts.font24kWhiteWeight500Inter,

          //style: AppFonts.font16kBlackWeight500Font.copyWith(
          ) // Corrected style name
      ),
    );
  }

}
