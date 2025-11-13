import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_text_styles.dart';
import 'package:handy_hub/core/constants/app_theme.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.size24,
        vertical: AppDimensions.size8,
      ),
      width: double.infinity,
      decoration: AppTheme.shadowDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: AppDimensions.size4,
        children: [
          Text(
            'العنوان',
            style: TextStyle(
              fontFamily: 'Almarai',
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'المحتوى',
            style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 10.sp,
              fontWeight: AppTextStyles.semiBold,
            ),
          ),
        ],
      ),
    );
  }
}
