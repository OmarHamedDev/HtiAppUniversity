import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonRegistrationWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color? color;
  final Color? textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double height;
  final Color? borderColor;
  const CustomButtonRegistrationWidget({
    super.key,
    this.onPressed,
   required this.text,
    this.borderColor,
    this.textColor,
    this.color,
    this.fontSize = 11,
    this.fontWeight = FontWeight.w500,
    this.height = 48,
  });

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: onPressed,
      child: Container(
      height: height.h,
       alignment: Alignment.center,
       padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
       decoration: ShapeDecoration(
         color: color ?? Colors.transparent,
       shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: borderColor ?? Colors.transparent),
         borderRadius: BorderRadius.circular(8.r),
          ),
       ),
              child: Text(
       text,
       style: TextStyle(
         color: textColor ?? Colors.white,
         fontSize: fontSize.sp,
         fontWeight: fontWeight,
       )
              ),
            ),
    );
  }
}
