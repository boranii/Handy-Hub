import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacementNamed('/onboarding');
    });
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(AppDimensions.size24.w),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.whiteColor,
          ),
            child: Image.asset(AppImages.logo,height: 200.h,width: 200.w,),),
      ),
    );
  }
}
