import 'package:flutter/material.dart';
import 'package:ligh_dark_theme/theme.dart';
import 'package:ligh_dark_theme/component/bottom_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Light Dark Theme',
      theme: theme(),
      home: const BottomNavigationAppBar(),
    );
  }
}
