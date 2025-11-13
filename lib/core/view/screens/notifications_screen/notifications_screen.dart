import 'package:flutter/material.dart';
import 'package:handy_hub/core/constants/app_dimensions.dart';
import 'package:handy_hub/core/view/screens/notifications_screen/notification_item.dart';
import 'package:handy_hub/core/view/widgets/custom_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'الاشعارات'),
      body: Padding(
        padding: EdgeInsets.all(AppDimensions.size24),
        child: SingleChildScrollView(
          child: Column(
            spacing: AppDimensions.size16,
            children: [
              for(int i =0;i<20;i++)
              NotificationItem(),
            ],
          ),
        ),
      ),
    );
  }
}
