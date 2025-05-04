import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hti_univerity/core/styles/colors/app_colors.dart';

class AppFonts{
  AppFonts._();

  static const String _fontInter = 'Inter';

  static TextStyle font24kBlackWeight500Inter=
  TextStyle(
    color: AppColors.kBlack,
    fontSize: 24.sp,
    fontFamily: _fontInter,
    fontWeight: FontWeight.w500,
  );

  static TextStyle font16kBlackWeight400Inter=
  TextStyle(
      color: AppColors.kBlack,
    fontSize: 16.sp,
    fontFamily: _fontInter,
    fontWeight: FontWeight.w400,
      height: 1.60
  );
  static TextStyle font16kBlackWeight500Inter=
  TextStyle(
      color: AppColors.kBlack,
      fontSize: 16.sp,
      fontFamily: _fontInter,
      fontWeight: FontWeight.w500,
      height: 1.60
  );
  static TextStyle font16kGrayWeight400Inter=
  TextStyle(
      color: AppColors.kGrey,
      fontSize: 16.sp,
      fontFamily: _fontInter,
      fontWeight: FontWeight.w400,
      height: 1.60
  );
  //
  // static TextStyle font16kBlackWeight500Inter=
  // TextStyle(
  //   color: AppColors.kBlack,
  //   fontSize: 16.sp,
  //   fontFamily: _fontInter,
  //   fontWeight: FontWeight.w500,
  // );

  static TextStyle font10kBlackWeight400Inter=
  TextStyle(
    color: Colors.black,
    fontSize: 10.sp,
    fontFamily: _fontInter,
    fontWeight: FontWeight.w400,
    height: 1.60,
  );

  static TextStyle font24kWhiteWeight500Inter=
  TextStyle(
    color: AppColors.kWhite,
    fontSize: 24.sp,
    fontFamily: _fontInter,
    fontWeight: FontWeight.w500,
    height: 1.60,
  );


  static TextStyle font20kBlackWeight500Inter=
  TextStyle(
    color: AppColors.kBlack,
    fontSize: 20.sp,
    fontFamily: _fontInter,
    height: 1.60,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font12kBlackWeight400Inter=
  TextStyle(
    color: AppColors.kBlack,
    fontSize: 12.sp,
    fontFamily: _fontInter,
    fontWeight: FontWeight.w400,
    height: 1.60,
  );


  static TextStyle font37kBlackWeight700Inter=
  TextStyle(
    color: Colors.black,
    fontSize: 37.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    height: 1.60,
  );

  static TextStyle font13kGrayWeight600Inter=
  TextStyle(
    color: const Color(0xFF596174),
    fontSize: 13.sp,
    fontFamily: _fontInter,
    fontWeight: FontWeight.w600,
    height: 1.60,
  );

  static TextStyle font12kGrayWeight600Inter=
       TextStyle(
  color: const Color(0xFF596174),
  fontSize: 12.sp,
  fontFamily: _fontInter,
  fontWeight: FontWeight.w600,
  height: 1.60,
  );
}