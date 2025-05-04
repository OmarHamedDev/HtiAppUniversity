import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/colors/app_colors.dart';
import '../../../../core/styles/fonts/app_fonts.dart';

class CustomButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color? color;
  final Color? textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double height;
  final double width;
  const CustomButtonWidget(
      {super.key,
      this.onPressed,
      required this.text,
      this.textColor, this.color,
      this.fontSize= 16,
      this.fontWeight = FontWeight.w500,
      this.height= 48,
      this.width= 335,
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kPrimary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),

        ),
        child: Text(
          text,
          style: AppFonts.font24kWhiteWeight500Inter.copyWith(
            color: textColor ?? AppColors.kWhite,
            fontSize: fontSize.sp,
            fontWeight: fontWeight,
          ),

          //style: AppFonts.font16kBlackWeight500Font.copyWith(
          ) // Corrected style name
      ),
    );
  }

}
