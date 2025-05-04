import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/colors/app_colors.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;
  const BaseScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(top: 4.0.h),
      width: double.infinity,
      height: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [AppColors.kBackground,AppColors.kWhite, AppColors.kWhite],
        ),
      )
      ,
      child: child,
    );
  }
}
