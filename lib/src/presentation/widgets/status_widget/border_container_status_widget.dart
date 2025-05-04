import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BorderContainerStatusWidget extends StatelessWidget {
  final Widget child;
  const BorderContainerStatusWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      //width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.w,
            color: const Color(0xFFA7A7A7),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: child,
    );
  }
}
