import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/colors/app_colors.dart';

class CustomTextFromField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final bool isReadOnly;
  final TextInputType inputType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int maxLine;
  final double? height;
  final double? width;
  final bool isObscureText;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  const CustomTextFromField({
    super.key,
    required this.controller,
    this.hintText,
    this.labelText,
    this.isObscureText = false,
    this.isReadOnly = false,
    this.inputType = TextInputType.text,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLine = 1,
    this.onChanged,
    this.validator,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?.w,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: onChanged,
        validator: validator,
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLine,
        readOnly: isReadOnly,
        obscureText: isObscureText,
        showCursor: !isReadOnly,
        style: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.w400,
          color: isReadOnly ? Colors.grey[600] : AppColors.kBlack,
        ),
        decoration: InputDecoration(
          filled: false,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Colors.grey[500],
          ),
          labelText: labelText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          contentPadding: EdgeInsets.symmetric(
            vertical: height != null ? height! / 3 : 14.h,
            horizontal: 12.w,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(width: 1, color: Color(0xFF848484)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(width: 1, color: Color(0xFF848484)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(width: 1, color: Color(0xFF848484)),
          ),
        ),
      ),
    );
  }
}
