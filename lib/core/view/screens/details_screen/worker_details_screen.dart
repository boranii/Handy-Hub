import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_icons.dart';
import 'package:handy_hub/core/constants/app_text_styles.dart';
import 'package:handy_hub/core/constants/app_theme.dart';
import 'package:handy_hub/core/view/widgets/app_bar_title.dart';
import 'package:handy_hub/core/view/widgets/states_text.dart';

class WorkerDetailsScreen extends StatelessWidget {
  const WorkerDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(370.h),
        child: Container(
          padding: EdgeInsets.all(AppDimensions.size24),
          decoration: AppTheme.primaryDecoration,
          child: Column(
            children: [
              AppBarTitle(title: 'التفاصيل'),
              SizedBox(height: AppDimensions.size16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: AppDimensions.size4,
                children: [
                  Column(
                    children: [
                      Text(
                        'قاسم حسن',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      Text(
                        'المحافظة-المديرية',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 10.sp,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(AppDimensions.size8),
                    height: 65.h,
                    width: 65.w,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.greyColor,
                    ),
                    child: SvgPicture.asset(
                      AppIcons.personIcon,
                      colorFilter: ColorFilter.mode(
                        AppColors.blackColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppDimensions.size24),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StatesText(states: '5', statesTitle: 'التقييم'),
                      StatesText(states: '100', statesTitle: 'خبره'),
                    ],
                  ),
                  SizedBox(height: AppDimensions.size24),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        AppColors.secondaryColor,
                      ),
                      foregroundColor: WidgetStatePropertyAll(
                        AppColors.whiteColor,
                      ),
                      elevation: WidgetStatePropertyAll(0),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: AppDimensions.borderRadius8,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.all(AppDimensions.size16),
                      child: Text(
                        'عرض الموقع على الخريطة',
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
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            right: AppDimensions.size24,
            bottom: AppDimensions.size32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: AppDimensions.size32),
              Text('التخصص', style: AppTextStyles.title24TextStyle),
              SizedBox(height: AppDimensions.size24),
              SizedBox(
                height: 185.h,
                child: Padding(
                  padding: EdgeInsets.only(right: AppDimensions.size24),
                  child: GridView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 8,
                    ),
                    itemBuilder: (context, idx) => Container(
                      decoration: BoxDecoration(
                        borderRadius: AppDimensions.borderRadius8,
                        color: AppColors.greyColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: AppDimensions.size8,
                        children: [
                          SvgPicture.asset(AppIcons.boltEmptyIcon),
                          Text(
                            'كهربائي',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontWeight: AppTextStyles.semiBold,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppDimensions.size32),
              Text('اعمال سابقة', style: AppTextStyles.title24TextStyle),
              SizedBox(height: AppDimensions.size24),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: EdgeInsets.only(right: AppDimensions.size24),
                  child: ListView.builder(
                    reverse: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, idx) => Container(
                      margin: EdgeInsets.only(
                        right: idx == 0 ? 0 : AppDimensions.size16,
                      ),
                      height: 100.h,
                      width: 90.w,
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: AppColors.greyColor,
                        borderRadius: AppDimensions.borderRadius8,
                      ),
                      child: SvgPicture.asset(AppIcons.pictureIcon),
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppDimensions.size32),
              Text('نبذة عن العامل', style: AppTextStyles.title24TextStyle),
              SizedBox(height: AppDimensions.size24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimensions.size24),
                child: Text(
                  'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق "ليتراسيت" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل "ألدوس بايج مايكر" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontFamily: 'Cairo', fontSize: 10),
                ),
              ),
              SizedBox(height: AppDimensions.size56),
              Padding(
                padding: EdgeInsets.only(left: AppDimensions.size24),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      AppColors.greyTextColor,
                    ),
                    foregroundColor: WidgetStatePropertyAll(
                      AppColors.blackColor,
                    ),
                    elevation: WidgetStatePropertyAll(0),
                    overlayColor: WidgetStatePropertyAll(
                      AppColors.greyColor.withAlpha(100),
                    ),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: AppDimensions.borderRadius16
                    ))
                  ),
                  onPressed: () {},
                  child: Center(child: Text('للتواصل سجل دخولك')),
                ),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     ElevatedButton(
                //       style: ButtonStyle(
                //         backgroundColor: WidgetStatePropertyAll(
                //           AppColors.whiteColor,
                //         ),
                //         foregroundColor: WidgetStatePropertyAll(
                //           AppColors.greenColor,
                //         ),
                //         elevation: WidgetStatePropertyAll(0),
                //         shape: WidgetStatePropertyAll(
                //           RoundedRectangleBorder(
                //             borderRadius: AppDimensions.borderRadius16,
                //           ),
                //         ),
                //         side: WidgetStatePropertyAll(
                //           BorderSide(color: AppColors.greenColor),
                //         ),
                //       ),
                //       onPressed: () {},
                //       child: Text(
                //         'مراسلة واتس اب',
                //         style: TextStyle(
                //           fontFamily: 'Cairo',
                //           fontSize: 14.sp,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //     Container(
                //       width: 61,
                //       height: 61,
                //       decoration: BoxDecoration(
                //         shape: BoxShape.circle,
                //         color: AppColors.secondaryColor,
                //       ),
                //       child: Icon(
                //         Icons.add,
                //         size: 38,
                //         color: AppColors.whiteColor,
                //       ),
                //     ),
                //     ElevatedButton(
                //       style: ButtonStyle(
                //         backgroundColor: WidgetStatePropertyAll(
                //           AppColors.primaryColor,
                //         ),
                //         foregroundColor: WidgetStatePropertyAll(
                //           AppColors.whiteColor,
                //         ),
                //         elevation: WidgetStatePropertyAll(0),
                //         shape: WidgetStatePropertyAll(
                //           RoundedRectangleBorder(
                //             borderRadius: AppDimensions.borderRadius16,
                //           ),
                //         ),
                //       ),
                //       onPressed: () {},
                //       child: Padding(
                //         padding: EdgeInsets.symmetric(horizontal: AppDimensions.size16),
                //         child: Text(
                //           'اتصال',
                //           style: TextStyle(
                //             fontFamily: 'Cairo',
                //             fontSize: 16.sp,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
