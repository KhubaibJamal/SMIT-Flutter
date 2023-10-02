import 'package:flutter/material.dart';
import 'package:signin_signup_form/component/default_button.dart';
import 'package:signin_signup_form/screens/welcome/component/welcome_text.dart';
import 'package:signin_signup_form/size_config.dart';

import 'already_have_an_account.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // welcome text
          const WelcomeText(),

          // sign up button
          SizedBox(height: SizeConfig.screenHeight! * 0.35),
          SizedBox(
            width: SizeConfig.screenWidth! * 0.8,
            child: DefaultButton(
              text: "Sign up",
              borderRadius: 15,
              press: () {},
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(5)),

          // already have account
          const AlreadyHaveAnAccount(),

          // welcome picture
          const Spacer(),
          Image.asset(
            'assets/images/welcome.png',
            scale: 0.5,
          ),
        ],
      ),
    );
  }
}
