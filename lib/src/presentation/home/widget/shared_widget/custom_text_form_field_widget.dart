import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styles/colors/app_colors.dart';
import '../../../../../core/styles/fonts/app_fonts.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  final String? hintText;
  final TextEditingController ? controller;
 final  String? Function(String?)? validator;
 final int ? maxLines;
 final TextInputType ? textInputType;
  const CustomTextFormFieldWidget({
    this.maxLines,
    this.textInputType,
    super.key, this.hintText, this.validator, this.controller});

  @override
  Widget build(BuildContext context) {
    return       TextFormField(
      controller: controller,
      validator: validator,
      maxLines: 1,
      keyboardType: textInputType,
      maxLength: maxLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.kGrey,
            width: 1,
          ),
        ),
        contentPadding:
        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        labelText: hintText,
        labelStyle: AppFonts.font16kGrayWeight400Inter,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.kGrey,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.kGrey,
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.kRed,
            width: 1,
          ),
        ),
      ),
    );
  }
}
