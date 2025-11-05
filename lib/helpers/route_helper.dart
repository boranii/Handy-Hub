import 'package:flutter/material.dart';
import 'package:handy_hub/core/view/screens/home_screen/home_screen.dart';
import 'package:handy_hub/core/view/screens/main_screen/main_screen.dart';
import 'package:handy_hub/core/view/screens/onboarding_screen/onboarding_screen.dart';
import 'package:handy_hub/core/view/screens/splash_screen/splash_screen.dart';

class RouteHelper{
  static Route generateRoute (RouteSettings settings){
    switch(settings.name) {
      case '/splash':return MaterialPageRoute(builder: (context)=>SplashScreen());
      case '/onboarding':return MaterialPageRoute(builder: (context)=>OnboardingScreen());
      case '/home':return MaterialPageRoute(builder: (context)=>HomeScreen());
      case '/main':return MaterialPageRoute(builder: (context)=>MainScreen());
      default:return MaterialPageRoute(builder: (context)=>Scaffold());
    }}
}