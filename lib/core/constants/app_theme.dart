import 'package:flutter/material.dart';
import 'package:handy_hub/core/constants/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    scaffoldBackgroundColor: AppColors.whiteColor,
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: AppColors.whiteColor)
  );
}
