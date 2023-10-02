import 'package:flutter/material.dart';
import 'package:signin_signup_form/route.dart';
import 'package:signin_signup_form/screens/welcome/welcome_screen.dart';
import 'package:signin_signup_form/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Authentication',
      theme: theme(),
      initialRoute: WelcomeScreen.routeName,
      routes: route,
    );
  }
}
