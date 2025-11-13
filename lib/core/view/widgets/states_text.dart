import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handy_hub/core/constants/app_colors.dart';

class StatesText extends StatelessWidget {
  final String states;
  final String statesTitle;
  const StatesText({required this.states,required this.statesTitle,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          states,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 48.sp,
            color: AppColors.whiteColor,
          ),
        ),
        Text(
          statesTitle,
          style: TextStyle(
            fontFamily: 'Cairo',
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
            color: AppColors.secondaryColor,
          ),
        ),
      ],
    );
  }
}
