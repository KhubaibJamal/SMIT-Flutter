import 'package:api/screens/detail/detail_screen.dart';
import 'package:api/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> route = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailScreen.routeName: (context) => const DetailScreen(),
};
