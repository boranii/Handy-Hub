import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_icons.dart';
import 'package:handy_hub/core/constants/app_text_styles.dart';
import 'package:handy_hub/core/view/screens/search_screen/filter_dialog_content.dart';
import 'package:handy_hub/core/view/screens/search_screen/rate_buttons.dart';
import 'package:handy_hub/core/view/widgets/custom_dialog.dart';
import 'package:handy_hub/core/view/widgets/custom_drop_down.dart';
import 'package:handy_hub/core/view/widgets/custom_multi_choice_button.dart';

class CustomSearchbar extends StatelessWidget {
  final bool isTappable;

  const CustomSearchbar({this.isTappable = true, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isTappable) {
          Navigator.of(context).pushNamed('/search');
        }
      },
      child: Container(
        width: double.infinity,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimensions.radius8),
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
                      topLeft: Radius.circular(AppDimensions.radius8),
                      bottomLeft: Radius.circular(AppDimensions.radius8),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                if (isTappable) {
                  Navigator.of(context).pushNamed('/search');
                } else {
                  customDialog(context, FilterDialogContent());
                }
              },
              child: SvgPicture.asset(AppIcons.filterIcon),
            ),
            Padding(
              padding: EdgeInsets.only(right: AppDimensions.size16),
              child: Row(
                spacing: AppDimensions.size4,
                children: [
                  if (isTappable) ...{
                    Align(
                      alignment: Alignment(0, -.2),
                      child: Text(
                        'بحث',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 16.sp,
                          color: AppColors.greyTextColor,
                        ),
                      ),
                    ),
                  } else ...{
                    SizedBox(
                      width: 250.w,
                      height: 40.h,
                      child: TextField(
                        textDirection: TextDirection.rtl,
                        maxLines: null,
                        expands: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hint: Text(
                            'بحث',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 16.sp,
                              color: AppColors.greyTextColor,
                            ),
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                      ),
                    ),
                  },
                  Icon(Icons.search, color: AppColors.primaryColor, size: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
