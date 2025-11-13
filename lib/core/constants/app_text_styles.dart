import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles{

  static FontWeight extraLight= FontWeight.w200;
  static FontWeight light= FontWeight.w300;
  static FontWeight semiBold= FontWeight.w600;
  static FontWeight extraBold= FontWeight.w800;
  static FontWeight black= FontWeight.w900;

  static TextStyle? titleTextStyle=TextStyle(
    fontFamily: 'Almarai',
    color: AppColors.blackColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle? title24TextStyle=titleTextStyle?.copyWith(fontSize: 24.sp);
  static TextStyle? title16TextStyle=titleTextStyle?.copyWith(fontSize: 16.sp);
}