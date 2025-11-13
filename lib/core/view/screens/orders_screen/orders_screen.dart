import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_icons.dart';
import 'package:handy_hub/core/constants/app_images.dart';
import 'package:handy_hub/core/constants/app_theme.dart';
import 'package:handy_hub/core/view/widgets/app_bar_title.dart';
import 'package:handy_hub/core/view/widgets/custom_app_bar.dart';
import 'package:handy_hub/core/view/widgets/custom_multi_choice_button.dart';
import 'package:handy_hub/core/view/widgets/worker_type.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'الطلبات',canReturn: false,),
      body: Padding(
        padding: EdgeInsets.all(AppDimensions.size24),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: AppDimensions.size24),
              child: SizedBox(
                height: 24.h,
                child: ListView.separated(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, idx) => CustomMultiChoiceButton(),
                  separatorBuilder: (context, idx) =>
                      SizedBox(width: AppDimensions.size16),
                  itemCount: 10,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/worker_details');
              },
              overlayColor: WidgetStatePropertyAll(Colors.transparent),
              child: Container(
                height: 76.h,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: AppTheme.shadowDecoration,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.scale(
                      scale: 0.75,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: DropdownMenu(
                          initialSelection: 'finished',
                          textStyle: TextStyle(
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            fontSize: 10.sp,
                            color: AppColors.whiteColor,
                          ),
                          width: 150.w,
                          inputDecorationTheme: InputDecorationTheme(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                AppDimensions.radius8,
                              ),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: AppColors.primaryColor,
                            suffixIconColor: AppColors.whiteColor,
                          ),
                          menuStyle: MenuStyle(
                            alignment: Alignment(1, 0.7),
                            backgroundColor: WidgetStatePropertyAll(
                              AppColors.primaryColor,
                            ),
                            elevation: WidgetStatePropertyAll(0),
                            fixedSize: WidgetStatePropertyAll(
                              Size.fromWidth(112.w),
                            ),
                          ),
                          dropdownMenuEntries: [
                            customItem('جديد', 'new'),
                            customItem('قيد التنفيذ', 'working'),
                            customItem('مكتمل', 'finished'),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      spacing: AppDimensions.size8,
                      children: [
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: AppDimensions.size4,
                            children: [
                              Text(
                                'العنوان',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'المحافظة-المديرية',
                                style: TextStyle(fontSize: 10),
                              ),
                              WorkerType(
                                type: 'كهربائي',
                                icon: AppIcons.boltIcon,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 76.w,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppImages.defaultImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: AppDimensions.size16,),
            InkWell(
              onTap: (){
                Navigator.of(context).pushNamed('/worker_details');
              },
              overlayColor: WidgetStatePropertyAll(Colors.transparent),
              child: Container(
                height: 76.h,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: AppDimensions.borderRadius8,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Container(
                      margin: EdgeInsets.only(left: AppDimensions.size24),
                      width: 70.w,
                      height: 28.h,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: AppDimensions.borderRadius8,
                      ),
                      child: Center(
                        child: Text(
                          'جديد',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            color: AppColors.whiteColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      spacing: AppDimensions.size8,
                      children: [
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: AppDimensions.size4,
                            children: [
                              Text(
                                'العنوان',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'المحافظة-المديرية',
                                style: TextStyle(fontSize: 10),
                              ),
                              WorkerType(type: 'كهربائي', icon: AppIcons.boltIcon),
                            ],
                          ),
                        ),
                        Container(
                          width: 76.w,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppImages.defaultImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

DropdownMenuEntry customItem(String title,String value)=>DropdownMenuEntry(
  value: value,
  label: title,
  labelWidget: InkWell(
    overlayColor: WidgetStatePropertyAll(
      Colors.transparent,
    ),
    child: Text(
      title,
      style: TextStyle(
        fontFamily: 'Cairo',
        fontWeight: FontWeight.bold,
        fontSize: 8.sp,
        color: AppColors.whiteColor,
      ),
    ),
  ),
);
