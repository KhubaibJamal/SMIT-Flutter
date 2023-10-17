import 'package:flutter/material.dart';
import 'package:signin_signup_form/screens/home/home_screen.dart';
import 'package:signin_signup_form/screens/sign%20in/sign_in_screen.dart';
import 'package:signin_signup_form/screens/sign%20up/sign_up_screen.dart';
import 'package:signin_signup_form/screens/welcome/welcome_screen.dart';

final Map<String, WidgetBuilder> route = {
  WelcomeScreen.routeName: (context) => const WelcomeScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
};
