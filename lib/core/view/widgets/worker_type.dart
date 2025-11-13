import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_text_styles.dart';

class WorkerType extends StatelessWidget {
  final String type;
  final String icon;
  const WorkerType({required this.type,required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: AppDimensions.size4,
      children: [
        SvgPicture.asset(
        icon,
        width: 16.w,
        height: 16.h,
      ),
        Text(
          type,
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: AppTextStyles.semiBold,
          ),
        ),

      ],
    );
  }
}
