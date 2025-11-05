import 'package:flutter/material.dart';
import 'package:handy_hub/core/view/screens/home_screen/home_screen.dart';
import 'package:handy_hub/core/view/screens/map_screen/map_screen.dart';

List<Widget> screens = [
  HomeScreen(),
  MapScreen(),
  Center(child: Text('Order')),
  Center(child: Text('Profile')),
];