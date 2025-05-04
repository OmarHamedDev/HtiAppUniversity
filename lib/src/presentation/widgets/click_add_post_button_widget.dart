import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styles/colors/app_colors.dart';
import '../../../core/styles/fonts/app_fonts.dart';
import '../create_event/view_model/create_event_post_cubit.dart';

class ClickButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final double? width;
  const ClickButtonWidget({super.key, required this.title,required this.onTap, this.width});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: InkWell(
        onTap:onTap,
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 16),
          height: 40.h,
          width: width ?? 120.w,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: ShapeDecoration(
            color: const Color(0xFFA32928),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: Text(
            title,
            style: AppFonts.font16kGrayWeight400Inter
                .copyWith(color: AppColors.kWhite),
          ),
        ),
      ),
    );
  }
}
