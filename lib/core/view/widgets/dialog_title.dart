import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handy_hub/core/constants/app_icons.dart';
import 'package:handy_hub/core/constants/app_text_styles.dart';

class DialogTitle extends StatelessWidget {
  final String title;
  const DialogTitle({required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: SvgPicture.asset(AppIcons.xIcon),
        ),
        Spacer(),
        Text(
          title,
          style: AppTextStyles.title24TextStyle,
        ),
        Spacer(),
      ],
    );
  }
}
