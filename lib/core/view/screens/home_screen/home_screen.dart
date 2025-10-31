import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 331.h),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(AppDimensions.radius16),
              bottomRight: Radius.circular(AppDimensions.radius16),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(AppDimensions.size24),
            child: Column(
              spacing: AppDimensions.size24,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 32.r,
                      backgroundColor: AppColors.whiteColor,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppDimensions.size8,
                          vertical: AppDimensions.size4,
                        ),
                        child: Image.asset(AppImages.logo),
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: DropdownMenu(
                        label: Icon(
                          Icons.person_2_outlined,
                          color: AppColors.whiteColor,
                          size: 32,
                        ),
                        width: 118.w,
                        inputDecorationTheme: InputDecorationTheme(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              AppDimensions.radius8,
                            ),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: AppColors.lightPrimaryColor,
                          suffixIconColor: AppColors.whiteColor,
                        ),
                        menuStyle: MenuStyle(
                          alignment: Alignment(1, 0.7),
                          backgroundColor: WidgetStatePropertyAll(
                            AppColors.lightPrimaryColor,
                          ),
                          elevation: WidgetStatePropertyAll(0),
                          fixedSize: WidgetStatePropertyAll(
                            Size.fromWidth(118.w),
                          ),
                        ),
                        dropdownMenuEntries: [
                          DropdownMenuEntry(
                            enabled: false,
                            value: 'log in',
                            label: 'تسجيل دخول',
                            labelWidget: InkWell(
                              overlayColor: WidgetStatePropertyAll(
                                Colors.transparent,
                              ),
                              child: Text(
                                'تسجيل دخول',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).pushNamed('/onboarding');
                              },
                            ),
                          ),
                          DropdownMenuEntry(
                            enabled: false,
                            value: 'sign in',
                            label: 'انشاء حساب',
                            labelWidget: InkWell(
                              overlayColor: WidgetStatePropertyAll(
                                Colors.transparent,
                              ),
                              child: Text(
                                'انشاء حساب',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).pushNamed('/onboarding');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                InkWell(
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
                          child: SvgPicture.asset('assets/Filter.svg'),
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
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppDimensions.size16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/map.svg',
                        height: 87.h,
                        width: 87.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                        Text('هل يوجد احد بالقرب منك ؟',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: AppColors.whiteColor),),
                        Text('اكتشف عمال قريبي منك على\n حدود 3 كم',textAlign: TextAlign.end,
                          style: TextStyle(fontSize: 14,color: AppColors.whiteColor),),
                        SizedBox(height: AppDimensions.size8,),
                        ElevatedButton(onPressed: (){},style: ButtonStyle(
                          backgroundColor:WidgetStatePropertyAll(AppColors.whiteColor) ,
                          foregroundColor:WidgetStatePropertyAll(AppColors.primaryColor) ,
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppDimensions.radius8)
                          ))
                        ), child: Text('اكتشف الان',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,),),)
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(height: 200, width: 200),
    );
  }
}
