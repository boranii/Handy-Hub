import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_icons.dart';
import 'package:handy_hub/core/constants/app_text_styles.dart';
import 'package:handy_hub/core/view/screens/search_screen/rate_buttons.dart';
import 'package:handy_hub/core/view/widgets/custom_drop_down.dart';
import 'package:handy_hub/core/view/widgets/custom_multi_choice_button.dart';
import 'package:handy_hub/core/view/widgets/dialog_title.dart';

class FilterDialogContent extends StatelessWidget {
  const FilterDialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        DialogTitle(title: 'فلتره'),
        SizedBox(height: AppDimensions.size32),
        CustomDropDown(label: 'المحافظة'),
        SizedBox(height: AppDimensions.size16),
        CustomDropDown(label: 'المديرية'),
        SizedBox(height: AppDimensions.size24),
        Text(
          'التخصص',
          style: AppTextStyles.title16TextStyle,
        ),
        SizedBox(height: AppDimensions.size16),
        Wrap(
          textDirection: TextDirection.rtl,
          spacing: AppDimensions.size8,
          runSpacing: AppDimensions.size8,
          children: [
            for (int i = 0; i < 6; i++)
              CustomMultiChoiceButton(),
          ],
        ),
        SizedBox(height: AppDimensions.size24),
        Text(
          'سنوات الخبره',
          style: AppTextStyles.title16TextStyle,
        ),
        SizedBox(height: AppDimensions.size16),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              '5+',
              style: TextStyle(
                fontFamily: 'Almarai',
                color: AppColors.secondaryColor,
                fontSize: 12.sp,
              ),
            ),
            Expanded(
              child: SliderTheme(
                data: SliderThemeData(
                  thumbColor: AppColors.secondaryColor,
                  activeTrackColor:
                  AppColors.primaryColor,
                ),
                child: RangeSlider(
                  values: RangeValues(1, 5),
                  onChanged: (value) {},
                  max: 6,
                  min: 0,
                ),
              ),
            ),
            Text(
              '0',
              style: TextStyle(
                fontFamily: 'Almarai',
                color: AppColors.secondaryColor,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
        SizedBox(height: AppDimensions.size24),
        Text(
          'التقييم',
          style: AppTextStyles.title16TextStyle,
        ),
        SizedBox(height: AppDimensions.size16),
        RateButton(),
        SizedBox(height: AppDimensions.size56),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: AppDimensions.size24,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                elevation: WidgetStatePropertyAll(0),
                backgroundColor: WidgetStatePropertyAll(
                  AppColors.whiteColor,
                ),
                foregroundColor: WidgetStatePropertyAll(
                  AppColors.primaryColor,
                ),
                side: WidgetStatePropertyAll(
                  BorderSide(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.size16,
                  vertical: AppDimensions.size8,
                ),
                child: Text(
                  'الغاء',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: WidgetStatePropertyAll(0),
                backgroundColor: WidgetStatePropertyAll(
                  AppColors.primaryColor,
                ),
                foregroundColor: WidgetStatePropertyAll(
                  AppColors.whiteColor,
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.size16,
                  vertical: AppDimensions.size8,
                ),
                child: Text(
                  'تطبيق',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
