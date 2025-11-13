import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_text_styles.dart';

class AppBarTitle extends StatelessWidget {
  final String title;
  final bool canReturn;
  const AppBarTitle({required this.title,this.canReturn=true,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if(canReturn)...{
          InkWell(
            onTap: () {
              if (Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
            },
            child: Container(
              padding: EdgeInsets.all(AppDimensions.size8),
              decoration: BoxDecoration(
                color: AppColors.lightPrimaryColor,
                borderRadius: AppDimensions.borderRadius8,
              ),
              child: Icon(
                Icons.arrow_back,
                color: AppColors.whiteColor,
                size: 30.w,
              ),
            ),
          ),
        }
        else...{
          Spacer(),
        },
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Almarai',
            fontSize: 24.sp,
            fontWeight: AppTextStyles.extraBold,
            color: AppColors.whiteColor,
          ),
        ),
      ],
    );
  }
}
