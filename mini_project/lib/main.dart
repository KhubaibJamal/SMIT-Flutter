import 'package:flutter/material.dart';
import 'package:mini_project/route.dart';
import 'package:mini_project/screen/splash/splash_screen.dart';

import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Project',
      theme: ThemeData(
        fontFamily: 'Manrope',
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: AppColor.kPrimaryColor,
        ),
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
