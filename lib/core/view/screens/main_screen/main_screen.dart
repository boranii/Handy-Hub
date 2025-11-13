import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_icons.dart';
import 'package:handy_hub/core/view/screens/home_screen/home_screen.dart';
import 'package:handy_hub/core/view/screens/main_screen/screens.dart';
import 'package:handy_hub/core/view/widgets/custom_dialog.dart';
import 'package:handy_hub/core/view/widgets/order_dialog_content.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}



class _MainScreenState extends State<MainScreen> {
  PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.size24),
        height: 69.h,
        color: AppColors.greyColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavIcon(pageController: pageController, icon: AppIcons.homeIcon, filledIcon: AppIcons.homeFilledIcon, index: 0),
            NavIcon(pageController: pageController, icon: AppIcons.mapIcon, filledIcon: AppIcons.mapFilledIcon, index: 1),
            // InkWell(
            //   onTap: () {
            //     pageController.jumpToPage(0);
            //     i = pageController.page!;
            //     setState(() {});
            //   },
            //   child: SvgPicture.asset(
            //     i == 0 ? AppIcons.homeFilledIcon : AppIcons.homeIcon,
            //   ),
            // ),
            // InkWell(
            //   onTap: () {
            //     pageController.jumpToPage(1);
            //     i = pageController.page!;
            //     setState(() {});
            //   },
            //   child: SvgPicture.asset( i == 1 ? AppIcons.mapFilledIcon: AppIcons.mapIcon),
            // ),
            InkWell(
              onTap: (){
                customDialog(context, OrderDialogContent());
              },
              child: Container(
                width: 61,
                height: 61,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.secondaryColor,
                ),
                child: Icon(Icons.add, size: 38, color: AppColors.whiteColor),
              ),
            ),
            // InkWell(
            //   onTap: () {
            //     pageController.jumpToPage(2);
            //     i = pageController.page!;
            //     setState(() {});
            //   },
            //   child: SvgPicture.asset(i == 2 ? AppIcons.orderFilledIcon: AppIcons.orderIcon),
            // ),
            // InkWell(
            //   onTap: () {
            //     pageController.jumpToPage(3);
            //     i = pageController.page!;
            //     setState(() {});
            //   },
            //   child: SvgPicture.asset(i == 3 ? AppIcons.personFilledIcon:AppIcons.personIcon),
            // ),
            NavIcon(pageController: pageController, icon: AppIcons.orderIcon, filledIcon: AppIcons.orderFilledIcon, index: 2),
            NavIcon(pageController: pageController, icon: AppIcons.personIcon, filledIcon: AppIcons.personFilledIcon, index: 3),

          ],
        ),
      ),
    );}

}
class NavIcon extends StatefulWidget {
  final PageController pageController;
  final String icon;
  final String filledIcon;
  final double index;

  const NavIcon({
    required this.pageController,
    required this.icon,
    required this.filledIcon,
    required this.index,
    super.key,
  });

  @override
  State<NavIcon> createState() => _NavIconState();
}

class _NavIconState extends State<NavIcon> {
  double currentIndex=0;
  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(_updatePage);
    currentIndex=widget.pageController.initialPage.toDouble();
  }

  _updatePage(){
    if(widget.pageController.page != null) {
      setState(() {
        currentIndex=widget.pageController.page!;
      });
    }

  }

  @override
  void dispose() {
    widget.pageController.removeListener(_updatePage);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isSelected=currentIndex.round() == widget.index;
    return InkWell(
      onTap: () {
        widget.pageController.jumpToPage(widget.index.toInt());
      },
      child: SvgPicture.asset(isSelected ? widget.filledIcon:widget.icon),
    );
  }
}

