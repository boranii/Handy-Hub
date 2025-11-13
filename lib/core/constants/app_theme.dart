import 'package:flutter/material.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.whiteColor,
      elevation: 0,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.whiteColor,
    ),
  );


  static BoxDecoration primaryDecoration=BoxDecoration(
    color: AppColors.primaryColor,
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(AppDimensions.radius16),
      bottomRight: Radius.circular(AppDimensions.radius16),
    ),
  );

  static BoxDecoration shadowDecoration=BoxDecoration(
    color: AppColors.whiteColor,
    borderRadius: AppDimensions.borderRadius8,
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 4,
        offset: Offset(0, 4),
      ),
    ],
  );

}
