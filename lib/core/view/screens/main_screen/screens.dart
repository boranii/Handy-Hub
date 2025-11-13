import 'package:flutter/material.dart';
import 'package:handy_hub/core/view/screens/home_screen/home_screen.dart';
import 'package:handy_hub/core/view/screens/map_screen/map_screen.dart';
import 'package:handy_hub/core/view/screens/orders_screen/orders_screen.dart';

List<Widget> screens = [
  HomeScreen(),
  MapScreen(),
  OrdersScreen(),
  Center(child: Text('Profile')),
];