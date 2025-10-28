import 'package:flutter/material.dart';
import 'package:handy_hub/core/constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: 200, width: 200, color: AppColors.primaryColor),
    );
  }
}
