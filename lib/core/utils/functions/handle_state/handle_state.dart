import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/api/network/error/error_handler.dart';

import '../../../styles/colors/app_colors.dart';

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
      child: Text(
        errorModel.errorMassage,
        style: const TextStyle(
          color: Colors.red,
          fontSize: 16,
        ),
      ),
    );
  }

  static Widget empty({required String message, IconData icon = Icons.inbox, double size = 48}) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.blueAccent, size: size),
          const SizedBox(height: 12),
          Text(
            message,
            style: TextStyle(
              color: AppColors.kPrimary,
              fontSize: 18.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
