import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:handy_hub/core/constants/app_colors.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';

customDialog(context, Widget child) => showDialog(
  barrierDismissible: false,
  context: context,
  builder: (context) {
    return Dialog(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: AppDimensions.borderRadius32),
      child: Container(
        padding: EdgeInsets.all(AppDimensions.size24),
        color: AppColors.whiteColor,
        child: child,
      ),
    );
  },
);
