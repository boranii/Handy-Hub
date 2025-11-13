import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_theme.dart';
import 'package:handy_hub/core/view/widgets/app_bar_title.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  final Size preferredSize= Size.fromHeight(95.h);

  final String title;
  final bool canReturn;
  CustomAppBar({required this.title,this.canReturn=true,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDimensions.size24),
      decoration: AppTheme.primaryDecoration,
      child: AppBarTitle(title: title,canReturn: canReturn,),
    );
  }
}
