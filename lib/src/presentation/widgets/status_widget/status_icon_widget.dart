import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class StatusIconWidget extends StatelessWidget {
  final bool status;
  final Color trueColor;
  final Color falseColor;
  final IconData trueIcon;
  final IconData falseIcon;
  final double size;
  final double iconSize;

  const StatusIconWidget({
    super.key,
    required this.status,
    this.trueColor = const Color(0xFF58C33E),
    this.falseColor = const Color(0xFFC33D3D),
    this.trueIcon = Icons.check,
    this.falseIcon = Icons.close,
    this.size = 26,
    this.iconSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.w,
      height: size.h,
      decoration: ShapeDecoration(
        color: status ? trueColor : falseColor,
        shape: const OvalBorder(),
      ),
      child: Icon(
        status ? trueIcon : falseIcon,
        color: Colors.white,
        size: iconSize.sp,
      ),
    );
  }
}
