import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.transparent,
     shadowColor: Colors.transparent,
       appBarTheme:  AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle:  TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: 'inter',
      ),
       iconTheme:  IconThemeData(
        color: Colors.black,
      size: 24.h,
      ),
    ),

  );
}
