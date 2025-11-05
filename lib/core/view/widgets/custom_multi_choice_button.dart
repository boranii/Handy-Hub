import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';

class CustomMultiChoiceButton extends StatefulWidget {
  const CustomMultiChoiceButton({super.key});

  @override
  State<CustomMultiChoiceButton> createState() => _CustomMultiChoiceButtonState();
}

class _CustomMultiChoiceButtonState extends State<CustomMultiChoiceButton> {
 bool isTapped=false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          isTapped=!isTapped;
        });
      },
      child: Container(
        width: 57.w,
        height: 24.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimensions.radius8),
          color: isTapped ?AppColors.primaryColor:AppColors.greyColor,
        ),
        child: Center(
          child: Text('الكل',style: TextStyle(
              fontSize: 12,
              color:isTapped? AppColors.whiteColor:AppColors.blackColor,
              fontWeight: FontWeight.w600
          ),),
        ),
      ),
    );
  }
}
