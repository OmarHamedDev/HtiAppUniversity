import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/fonts/app_fonts.dart';
import '../../../../core/utils/functions/spaceing/spaceing.dart';

class NotificationCardProfileWidget extends StatelessWidget {
  const NotificationCardProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.notifications_none, size: 26, color: Colors.black54),
              horizontalSpace(12),
              Expanded(
                child: Text(
                  "Notifications",
                  style: AppFonts.font16kBlackWeight400Inter,
                ),
              ),
              Switch(
                value: true,
                onChanged: (value) {},
                activeColor: Colors.yellow.shade600,
                activeTrackColor: const Color(0xFF004B6D),
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.grey.shade400,
              ),
            ],
          ),
          verticalSpace(6),
          Text(
            "Receive notifications about events and grades",
            style: AppFonts.font12kGrayWeight600Inter.copyWith(
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
