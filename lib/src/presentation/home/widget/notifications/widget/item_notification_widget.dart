import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/functions/spaceing/spaceing.dart';

class ItemNotificationWidget extends StatelessWidget {
  const ItemNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return      Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/logo.png',
            width: 80.w,
            height: 80.h,
            fit: BoxFit.cover,
          ),
        ),
        horizontalSpace(12),
        Expanded(
          child: AutoSizeText(
            'لديك كويز في مادة رسم بواسطة الحاسب يوم 1/3/2025 الساعة (10:30 صباحا). استعد جيدًا !',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 1.6,
            ),
            maxLines: 5,
            minFontSize: 15.0,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );

  }
}
