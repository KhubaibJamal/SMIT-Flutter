import 'package:flutter/material.dart';
import 'package:signin_signup_form/screens/sign%20up/sign_up_screen.dart';
import 'package:signin_signup_form/screens/welcome/welcome_screen.dart';

final Map<String, WidgetBuilder> route = {
  WelcomeScreen.routeName: (context) => const WelcomeScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
};
