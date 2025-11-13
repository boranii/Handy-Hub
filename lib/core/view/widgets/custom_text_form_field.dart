import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_icons.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String icon;
  final String? helperText;
  final int? maxLines;
  final int? minLines;
  final TextInputType? textInputType;

  const CustomTextFormField({
    this.helperText,
    this.maxLines=1,
    this.minLines,
    this.textInputType,
    required this.hintText,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: AppDimensions.borderRadius16,
          borderSide: BorderSide(color: AppColors.greyTextColor),
        ),
        helperText: helperText,
        helperStyle: TextStyle(
          fontFamily: 'Cairo',
          fontSize: 10.sp,
          color: AppColors.greyTextColor,
        ),helperMaxLines: 2,
        prefixIconConstraints: BoxConstraints(minWidth: 24, minHeight: 24),
        prefixIcon: Padding(
          padding: EdgeInsets.only(right: AppDimensions.size8,bottom: maxLines == null?AppDimensions.size24:0),
          child: SvgPicture.asset(icon),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: 'Cairo',
          fontSize: 12.sp,
          color: AppColors.greyTextColor,
        ),
      ),
      maxLines: maxLines,
      minLines: minLines,
      keyboardType: textInputType,
      textDirection: TextDirection.rtl,
    );
  }
}
