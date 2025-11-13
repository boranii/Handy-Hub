import 'package:flutter/material.dart';
import 'package:handy_hub/core/view/screens/details_screen/work_details_screen.dart';
import 'package:handy_hub/core/view/screens/details_screen/worker_details_screen.dart';
import 'package:handy_hub/core/view/screens/main_screen/main_screen.dart';
import 'package:handy_hub/core/view/screens/not_found_screen/not_found_screen.dart';
import 'package:handy_hub/core/view/screens/notifications_screen/notifications_screen.dart';
import 'package:handy_hub/core/view/screens/onboarding_screen/onboarding_screen.dart';
import 'package:handy_hub/core/view/screens/search_screen/search_screen.dart';
import 'package:handy_hub/core/view/screens/splash_screen/splash_screen.dart';

class RouteHelper{
  static Route generateRoute (RouteSettings settings){
    switch(settings.name) {
      case '/splash':return MaterialPageRoute(builder: (context)=>SplashScreen());
      case '/onboarding':return MaterialPageRoute(builder: (context)=>OnboardingScreen());
       // case '/home':return MaterialPageRoute(builder: (context)=>HomeScreen());
      case '/main':return MaterialPageRoute(builder: (context)=>MainScreen());
      case '/search':return MaterialPageRoute(builder: (context)=>SearchScreen());
      case '/worker_details':return MaterialPageRoute(builder: (context)=>WorkerDetailsScreen());
      case '/work_details':return MaterialPageRoute(builder: (context)=>WorkDetailsScreen());
      case '/notifications':return MaterialPageRoute(builder: (context)=>NotificationsScreen());
      default:return MaterialPageRoute(builder: (context)=>NotFoundScreen());
    }}
}