import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/api/network/error/error_handler.dart';

import '../../../styles/colors/app_colors.dart';
import '../../../styles/fonts/app_fonts.dart';
import '../../../styles/images/app_images.dart';
import '../../widget/base_scaffold.dart';
import '../spaceing/spaceing.dart';

class HandleState {
  static Widget loading() {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.kPrimary,
      ),
    );
  }

  static Widget error(Exception exception) {
    final errorModel=ErrorHandler.formException(exception);
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.errorIcon,
                width: 300.w,
                height: 200.h,
                fit: BoxFit.cover,
              ),
              verticalSpace(20),
              Text(
                errorModel.errorMassage,
                textAlign: TextAlign.center,
                maxLines: 3,
                style:
                AppFonts.font20kBlackWeight500Inter,
              ),
            ],
          ),
        ),
      ),
    );
  }


  static Widget emptyList({required Widget child, required List list, String message = "Empty List"}) {
    if (list.isEmpty) {
      return empty(message: message);
    } else {
      return child;
    }
  }

 static Widget empty({
    required String message,
  }) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.emptyListIcon,
              width: 300.w,
              height: 200.h,
              fit: BoxFit.cover,
            ),
            verticalSpace(20),
            Text(
              message,
              textAlign: TextAlign.center,
              maxLines: 3,
              style: AppFonts.font20kBlackWeight500Inter,
            ),
          ],
        ),
      ),
    );
  }

// return Center(
    //   child: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       Icon(icon, color: Colors.blueAccent, size: size),
    //       const SizedBox(height: 12),
    //       Text(
    //         message,
    //         style: TextStyle(
    //           color: AppColors.kPrimary,
    //           fontSize: 18.sp,
    //         ),
    //         textAlign: TextAlign.center,
    //       ),
    //     ],
    //   ),
    // );
  }

