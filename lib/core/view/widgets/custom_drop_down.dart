import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';

class CustomDropDown extends StatelessWidget {
  final String label;
  const CustomDropDown({required this.label,super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DropdownMenu(
        dropdownMenuEntries: [],
        inputDecorationTheme: InputDecorationTheme(
          suffixIconColor: AppColors.primaryColor,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.greyTextColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(AppDimensions.radius16),
            ),
          ),
        ),
        width: 148.w,
        label: Text(
          label,
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 12.sp,
            color: AppColors.greyTextColor,
          ),
        ),
      ),
    );
  }
}
