import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/styles/colors/app_colors.dart';
import '../../../../../../../core/styles/fonts/app_fonts.dart';
import '../../../../../../../core/utils/functions/spaceing/spaceing.dart';
class ItemStudentNotificationWidget extends StatelessWidget {
  final String title;
  final String description;
  final String createdAt;
   final String fileUrl;

  const ItemStudentNotificationWidget({
    super.key,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.fileUrl,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 8.h),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
       // color: Colors.white.withOpacity(0.95),
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: const Color(0xFFE0E0E0),
          width: 1,
        ),
      ),
      child: Row(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppFonts.font16kBlackWeight500Inter,
                ),
                verticalSpace(4),
                Text(
                  description,
                  style: AppFonts.font12kBlackWeight400Inter,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(4),
                Text(
                  createdAt,
                  style: AppFonts.font12kGrayWeight600Inter,
                ),
                verticalSpace(10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton.icon(
                    onPressed: () async {},
                    icon: Icon(
                      Icons.download_rounded,
                      size: 18,
                      color: AppColors.kPrimary,
                    ),
                    label: Text(
                      'Download File',
                      style: AppFonts.font12kBlackWeight400Inter.copyWith(
                        color: AppColors.kPrimary,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: AppColors.kPrimary.withOpacity(0.1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


