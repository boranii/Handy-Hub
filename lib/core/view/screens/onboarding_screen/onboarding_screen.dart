import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_images.dart';
import 'package:handy_hub/core/models/onboarding_model.dart';
import 'package:handy_hub/core/view/screens/onboarding_screen/onboarding_items.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController onboardingController = PageController(initialPage: 0);

  int currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    onboardingController.addListener(updatePage);
  }

  void updatePage() {
    int nextPage = onboardingController.page!.round();
    if (currentPage != nextPage)
      setState(() {
        currentPage = nextPage;
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    onboardingController.removeListener(updatePage);
    onboardingController.dispose();
    super.dispose();
  }

  Widget indicator(int index) {
    bool isActive = index == currentPage;

    return AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: AppDimensions.size4.w),
      duration: Duration(milliseconds: 500),
      height: 15.h,
      width: isActive ? 35.w : 15.w,
      decoration: BoxDecoration(
        color: isActive
            ? AppColors.primaryColor
            : AppColors.secondaryColor.withAlpha(125),
        borderRadius: BorderRadius.circular(AppDimensions.radius8),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: onboardingItems.length,
        physics: NeverScrollableScrollPhysics(),
        controller: onboardingController,
        itemBuilder: (context, idx) => oo(onboardingItems[idx]),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.size24,
        ).add(EdgeInsets.only(bottom: AppDimensions.size24)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              borderRadius: BorderRadius.circular(AppDimensions.radius8),
              child: Padding(
                padding: EdgeInsets.all(AppDimensions.size8),
                child: Text(
                  'تخطي',
                  style: GoogleFonts.cairo(
                    fontSize: 24.sp,
                    color: AppColors.blackColor,
                  ),
                ),
              ),
            ),
            Row(
              children: List.generate(onboardingItems.length, (index) {
                return indicator(index);
              }),
            ),
            InkWell(
              onTap: () {
                if (onboardingController.page! < 2) {
                  onboardingController.nextPage(
                    duration: Duration(milliseconds: 750),
                    curve: Curves.easeIn,
                  );
                }
                if (currentPage == 2) {
                  Navigator.of(context).pushReplacementNamed('/home');
                }
              },
              borderRadius: BorderRadius.circular(AppDimensions.radius8),
              child: Padding(
                padding: EdgeInsets.all(AppDimensions.size8),
                child: Text(
                  currentPage == 2 ? 'تصفح' : 'التالي',
                  style: GoogleFonts.cairo(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget oo(OnboardingModel list) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(list.image),
        Text(
          list.title,
          style: GoogleFonts.almarai(
            fontSize: 46.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
