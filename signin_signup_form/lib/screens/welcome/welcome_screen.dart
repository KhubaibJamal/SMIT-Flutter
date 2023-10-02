import 'package:flutter/material.dart';
import 'package:signin_signup_form/screens/welcome/component/body.dart';
import 'package:signin_signup_form/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/welcome";
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
