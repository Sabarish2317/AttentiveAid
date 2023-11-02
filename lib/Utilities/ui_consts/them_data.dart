import 'package:attentive_aid/Utilities/ui_consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData appTheme = ThemeData(
  //text and bnb theme
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 10,
      backgroundColor: tdgray,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false),
  scaffoldBackgroundColor: tdBgColor,
  /*Text themes*/ textTheme: TextTheme(
    titleLarge: TextStyle(
        fontSize: 32.sp,
        fontFamily: 'inter',
        color: tdTlColor,
        letterSpacing: 0.16,
        fontWeight: FontWeight.w600),
    titleMedium: TextStyle(
      color: tdTxtBlk,
      fontSize: 24.sp,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      color: const Color(0xFF7D13BE),
      fontSize: 24.sp,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    ),
    labelLarge: TextStyle(
      color: const Color(0xFF1E1B39),
      fontSize: 15.sp,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
      letterSpacing: 0.07,
    ),
    labelMedium: TextStyle(
      color: tdTxtBlk,
      fontSize: 12.sp,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      color: tdTxtBlk,
      fontSize: 12.sp,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: const Color(0xFF6B6B6B),
      fontSize: 12.sp,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    displayLarge: TextStyle(
      color: tdBgColor,
      fontSize: 16.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w600,
      letterSpacing: 0.32,
    ),
    displayMedium: TextStyle(
      color: const Color(0xFF4F4F4F),
      fontSize: 14.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w600,
      letterSpacing: 0.28,
    ),
    displaySmall: TextStyle(
      color: tdPureBlue,
      fontSize: 12.sp,
      fontFamily: 'Lato',
      fontWeight: FontWeight.w600,
      letterSpacing: 0.24,
    ),
  ),
);
