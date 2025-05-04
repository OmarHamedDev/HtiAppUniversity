import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActionButtonsRowItemWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final Color? color;
  final Color? textColor;
  const ActionButtonsRowItemWidget(
      {super.key,
      required this.label,
      required this.onTap,
      this.color,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 164.w,
        height: 48.h,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              width: 1,
              color: color ?? const Color(0xFFA7A7A7),
            ),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: 10.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.60,
          ),
        ),
      ),
    );
  }
}
