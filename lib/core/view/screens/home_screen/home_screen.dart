import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_icons.dart';
import 'package:handy_hub/core/constants/app_images.dart';
import 'package:handy_hub/core/constants/app_text_styles.dart';
import 'package:handy_hub/core/view/widgets/custom_multi_choice_button.dart';
import 'package:handy_hub/core/view/widgets/custom_searchbar.dart';

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
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     CircleAvatar(
                //       radius: 32.r,
                //       backgroundColor: AppColors.whiteColor,
                //       child: Padding(
                //         padding: EdgeInsets.symmetric(
                //           horizontal: AppDimensions.size8,
                //           vertical: AppDimensions.size4,
                //         ),
                //         child: Image.asset(AppImages.logo),
                //       ),
                //     ),
                //     Directionality(
                //       textDirection: TextDirection.rtl,
                //       child: DropdownMenu(
                //         label: Icon(
                //           Icons.person_2_outlined,
                //           color: AppColors.whiteColor,
                //           size: 32,
                //         ),
                //         width: 118.w,
                //         inputDecorationTheme: InputDecorationTheme(
                //           enabledBorder: OutlineInputBorder(
                //             borderRadius: BorderRadius.circular(
                //               AppDimensions.radius8,
                //             ),
                //             borderSide: BorderSide.none,
                //           ),
                //           filled: true,
                //           fillColor: AppColors.lightPrimaryColor,
                //           suffixIconColor: AppColors.whiteColor,
                //         ),
                //         menuStyle: MenuStyle(
                //           alignment: Alignment(1, 0.7),
                //           backgroundColor: WidgetStatePropertyAll(
                //             AppColors.lightPrimaryColor,
                //           ),
                //           elevation: WidgetStatePropertyAll(0),
                //           fixedSize: WidgetStatePropertyAll(
                //             Size.fromWidth(118.w),
                //           ),
                //         ),
                //         dropdownMenuEntries: [
                //           DropdownMenuEntry(
                //             enabled: false,
                //             value: 'log in',
                //             label: 'تسجيل دخول',
                //             labelWidget: InkWell(
                //               overlayColor: WidgetStatePropertyAll(
                //                 Colors.transparent,
                //               ),
                //               child: Text(
                //                 'تسجيل دخول',
                //                 style: TextStyle(
                //                   fontSize: 14.sp,
                //                   color: AppColors.whiteColor,
                //                 ),
                //               ),
                //               onTap: () {
                //                 Navigator.of(context).pushNamed('/onboarding');
                //               },
                //             ),
                //           ),
                //           DropdownMenuEntry(
                //             enabled: false,
                //             value: 'sign in',
                //             label: 'انشاء حساب',
                //             labelWidget: InkWell(
                //               overlayColor: WidgetStatePropertyAll(
                //                 Colors.transparent,
                //               ),
                //               child: Text(
                //                 'انشاء حساب',
                //                 style: TextStyle(
                //                   fontSize: 14.sp,
                //                   color: AppColors.whiteColor,
                //                 ),
                //               ),
                //               onTap: () {
                //                 Navigator.of(context).pushNamed('/onboarding');
                //               },
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Badge(
                        // isLabelVisible: false,
                        label: Text('+9'),
                        backgroundColor: AppColors.secondaryColor,
                        child: Container(
                          height: 46.h,
                          width: 46.w,
                          decoration: BoxDecoration(
                            color: AppColors.lightPrimaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.notifications_outlined,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'المحافظة',
                              style: TextStyle(
                                fontSize: 10,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'المديرية',
                              style: TextStyle(
                                fontSize: 8,
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.location_on_outlined,
                          size: 30,
                          color: AppColors.whiteColor,
                        ),
                      ],
                    ),
                  ],
                ),
                CustomSearchbar(),
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //     horizontal: AppDimensions.size16,
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       SvgPicture.asset(
                //         'assets/map.svg',
                //         height: 87.h,
                //         width: 87.w,
                //       ),
                //       Column(
                //         crossAxisAlignment: CrossAxisAlignment.end,
                //         children: [
                //           Text(
                //             'هل يوجد احد بالقرب منك ؟',
                //             style: TextStyle(
                //               fontWeight: FontWeight.bold,
                //               fontSize: 20,
                //               color: AppColors.whiteColor,
                //             ),
                //           ),
                //           Text(
                //             'اكتشف عمال قريبي منك على\n حدود 3 كم',
                //             textAlign: TextAlign.end,
                //             style: TextStyle(
                //               fontSize: 14,
                //               color: AppColors.whiteColor,
                //             ),
                //           ),
                //           SizedBox(height: AppDimensions.size8),
                //           ElevatedButton(
                //             onPressed: () {},
                //             style: ButtonStyle(
                //               backgroundColor: WidgetStatePropertyAll(
                //                 AppColors.whiteColor,
                //               ),
                //               foregroundColor: WidgetStatePropertyAll(
                //                 AppColors.primaryColor,
                //               ),
                //               shape: WidgetStatePropertyAll(
                //                 RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(
                //                     AppDimensions.radius8,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //             child: Text(
                //               'اكتشف الان',
                //               style: TextStyle(
                //                 fontWeight: FontWeight.bold,
                //                 fontSize: 14,
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(height: AppDimensions.size8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '100',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        Text(
                          'عمل',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '5',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w700,
                            fontSize: 48.sp,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        Text(
                          'تقييم',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '100',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        Text(
                          'توظيف',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            right: AppDimensions.size24,
            top: AppDimensions.size32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(),
              Text('الفئات', style: AppTextStyles.titleTextStyle),
              SizedBox(height: AppDimensions.size16),
              SizedBox(
                height: 102.h,
                child: GridView.builder(
                  reverse: true,
                  itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // Max width of each item.
                    // childAspectRatio: 1.5,
                    // Ratio of Width / Height (e.g., 1.5 makes it wider than tall)
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 24,
                    mainAxisExtent: 124,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, idx) => InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 44.h,
                      width: 124.w,
                      decoration: BoxDecoration(
                        color: AppColors.greyColor,
                        borderRadius: BorderRadius.circular(
                          AppDimensions.radius8,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        spacing: AppDimensions.size8,
                        children: [
                          Text(
                            'الكهرباء',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: AppDimensions.size8,
                            ),
                            child: SvgPicture.asset(AppIcons.boltIcon),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppDimensions.size32),
              Padding(
                padding: EdgeInsets.only(left: AppDimensions.size24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'المزيد',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    Text('العمال', style: AppTextStyles.titleTextStyle),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: AppDimensions.size16),
                child: SizedBox(
                  height: 24.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, idx) => CustomMultiChoiceButton(),
                    separatorBuilder: (context, idx) =>
                        SizedBox(width: AppDimensions.size16),
                    itemCount: 10,
                  ),
                ),
              ),
              Wrap(
                textDirection: TextDirection.rtl,
                spacing: AppDimensions.size24,
                runSpacing: AppDimensions.size16,
                children: [
                  for (int i = 0; i < 5; i++)
                    Container(
                      width: 174.w,
                      height: 221.h,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(
                          AppDimensions.radius8,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(AppImages.defaultImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: AppDimensions.size16,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                spacing: AppDimensions.size4,
                                children: [
                                  SizedBox(height: AppDimensions.size4),
                                  Text(
                                    'قاسم حسن',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'المحافظة-المديرية',
                                    style: TextStyle(fontSize: 8.sp),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    spacing: AppDimensions.size4,
                                    children: [
                                      Text(
                                        'كهربائي',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        AppIcons.boltIcon,
                                        width: 16.w,
                                        height: 16.h,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      for (int i = 0; i < 5; i++)
                                        Icon(
                                          Icons.star,
                                          color: AppColors.secondaryColor,
                                          size: 12,
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
                ],
              ),
              SizedBox(height: 56),
              Container(
                margin: EdgeInsets.only(left: AppDimensions.size24),
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
                          'المزيد',
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      spacing: AppDimensions.size8,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              spacing: AppDimensions.size4,
                              children: [
                                Text(
                                  'كهربائي',
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SvgPicture.asset(
                                  AppIcons.boltIcon,
                                  width: 16.w,
                                  height: 16.h,
                                ),
                              ],
                            ),
                          ],
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
              SizedBox(height: 56),
            ],
          ),
        ),
      ),

    );
  }
}
