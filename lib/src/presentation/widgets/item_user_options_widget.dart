import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styles/fonts/app_fonts.dart';

class ItemUserOptionsWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ItemUserOptionsWidget(
      {super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 16.w),
        width: double.infinity,
        height: 64.h,
        alignment: Alignment.centerLeft,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: const Color(0xFFA7A7A7),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.start,
          style: AppFonts.font16kBlackWeight400Inter,
        ),
      ),
    );
  }
}
