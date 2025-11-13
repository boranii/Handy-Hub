import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/constants/app_icons.dart';
import 'package:handy_hub/core/view/widgets/custom_text_form_field.dart';
import 'package:handy_hub/core/view/widgets/dialog_title.dart';

class OrderDialogContent extends StatelessWidget {
  const OrderDialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DialogTitle(title: 'اضافة طلب'),
        SizedBox(height: AppDimensions.size32),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: AppDimensions.size16,
              children: [
                CustomTextFormField(
                  hintText: 'العنوان',
                  icon: AppIcons.titleIcon,
                  textInputType: TextInputType.streetAddress,
                ),
                CustomTextFormField(
                  hintText: 'رقم الحرفي',
                  icon: AppIcons.phoneIcon,
                  textInputType: TextInputType.phone,
                  helperText:
                      'اذا كان لديك حرفي معين اضف  رقمه او سيتم ارسال الطلب لكل الحرفيين بنفس الحرفة المذكورة',
                ),
                CustomTextFormField(
                  hintText: 'نبذة عن العمل',
                  icon: AppIcons.editIcon,
                  maxLines: null,
                  minLines: 2,
                  textInputType: TextInputType.multiline,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
