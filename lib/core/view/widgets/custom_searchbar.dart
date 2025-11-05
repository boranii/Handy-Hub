import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_icons.dart';

class CustomSearchbar extends StatelessWidget {
  const CustomSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppDimensions.radius8,
          ),
          color: AppColors.whiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  AppColors.secondaryColor,
                ),
                elevation: WidgetStatePropertyAll(0),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        AppDimensions.radius8,
                      ),
                      bottomLeft: Radius.circular(
                        AppDimensions.radius8,
                      ),
                    ),
                  ),
                ),
              ),
              onPressed: () {},
              child: SvgPicture.asset(AppIcons.filterIcon),
            ),
            Padding(
              padding: EdgeInsets.only(right: AppDimensions.size16),
              child: Row(
                spacing: AppDimensions.size4,
                children: [
                  Text('بحث'),
                  Icon(Icons.search, color: AppColors.primaryColor),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
