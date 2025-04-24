import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styles/colors/app_colors.dart';

class IconActionAppBarWidget extends StatelessWidget {
  final IconData icon;
  final double width;
  final double height;
  final double iconSize;
  final double padding;
  const IconActionAppBarWidget({super.key, required this.icon,
    this.width =35,  this.height= 35, this.iconSize=25,this.padding=8});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding:  EdgeInsets.all(padding.w),
      child: Container(
        width: width.w,
        height: height.h,
        decoration: ShapeDecoration(
          color: const Color(0xFFFFF8F6),
          shape: OvalBorder(),
          shadows: [
            BoxShadow(
              color: Color(0x33000000),
              blurRadius: 5,
              offset: Offset(0, 3),
              spreadRadius: 0,
            )
          ],
        ),
        child: Icon(icon, size: iconSize.sp, color: AppColors.kBlack,),
      ),
    );
  }
}
