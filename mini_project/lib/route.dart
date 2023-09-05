import 'package:flutter/material.dart';
import 'package:mini_project/screen/category/category_screen.dart';
import 'package:mini_project/screen/home/home_screen.dart';
import 'package:mini_project/screen/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CategoryScreen.routeName: (context) => CategoryScreen(),
};
