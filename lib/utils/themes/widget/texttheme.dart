import 'package:flutter/material.dart';
import 'package:idcard/constants/colors.dart';
import 'package:idcard/constants/styles.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = const TextTheme(
    titleLarge: TextStyle(
      fontFamily: poppins,
      fontSize: 33,
      fontWeight: FontWeight.w600,
      height: 33,
      color: AppColors.blue,
    ),
    bodyMedium: TextStyle(
      fontFamily: poppins,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      height: 15.4 / 14,
      color: AppColors.blue,
    ),
    bodySmall: TextStyle(
      fontFamily: poppins,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      height: 16.8 / 14,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      fontFamily: poppins,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 15.4 / 14,
      color: Colors.white,
    ),
    labelSmall: TextStyle(
      fontFamily: poppins,
      fontSize: 10,
      // fontWeight: FontWeight.normal,
      height: 15 / 10,
      color: Colors.white,
    ),
    labelMedium: TextStyle(
      fontFamily: poppins,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 13.8 / 12,
      color: Colors.white,
    ),
    labelLarge: TextStyle(
      fontFamily: poppins,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      height: 14.4 / 12,
      color: Colors.white,
    ),
    headlineSmall: TextStyle(
      fontFamily: poppins,
      fontSize: 10,
      fontWeight: FontWeight.w500,
      height: 12 / 10,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      fontFamily: poppins,
      fontSize: 10,
      fontWeight: FontWeight.w600,
      height: 11 / 10,
      color: Colors.white,
    ),
    headlineLarge: TextStyle(
      fontFamily: poppins,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      height: 18 / 12,
      color: Colors.white,
    ),
    displaySmall: TextStyle(
      fontFamily: poppins,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 15.4 / 14,
      color: Colors.white,
    ),
    displayMedium: TextStyle(
      fontFamily: poppins,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      height: 11 / 10,
      color: Colors.white,
    ),
    displayLarge: TextStyle(
      fontFamily: poppins,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      height: 11 / 10,
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontFamily: poppins,
      fontSize: 8,
      fontWeight: FontWeight.w600,
      height: 8.8 / 8,
      color: Colors.white,
    ),
  );
}
