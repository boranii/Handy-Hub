import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_icons.dart';
import 'package:handy_hub/core/constants/app_images.dart';
import 'package:handy_hub/core/constants/app_theme.dart';
import 'package:handy_hub/core/view/widgets/app_bar_title.dart';
import 'package:handy_hub/core/view/widgets/custom_searchbar.dart';
import 'package:handy_hub/core/view/widgets/worker_type.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(170.h),
        child: Container(
          padding: EdgeInsets.all(AppDimensions.size24),
          decoration: AppTheme.primaryDecoration,
          child: Column(
            spacing: AppDimensions.size32,
            children: [
              AppBarTitle(title: 'بحث'),
              CustomSearchbar(isTappable: false),
            ],
          ),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: GridView.builder(
          itemCount: 17,
          padding: EdgeInsets.symmetric(vertical: AppDimensions.size56),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .9,
            mainAxisSpacing: AppDimensions.size16,
          ),
          itemBuilder: (context, idx) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.0.w),
            child: Column(
              spacing: AppDimensions.size4,
              children: [
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: AppDimensions.borderRadius8,
                  ),
                  child: Image.asset(
                    AppImages.defaultImage,
                    width: 142.w,
                    height: 142.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: AppDimensions.size4,
                  children: [
                    Text(
                      'الاسم',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'المحافظة-المديرية',
                      style: TextStyle(fontFamily: 'Cairo', fontSize: 8),
                    ),
                    WorkerType(type: 'كهربائي', icon: AppIcons.boltIcon)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
