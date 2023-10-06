import 'package:flutter/material.dart';
import 'package:signin_signup_form/component/default_button.dart';
import 'package:signin_signup_form/screens/sign%20up/sign_up_screen.dart';
import 'package:signin_signup_form/screens/welcome/component/welcome_bottom_image.dart';
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
          SizedBox(height: SizeConfig.screenHeight! * 0.34),
          SizedBox(
            width: SizeConfig.screenWidth! * 0.8,
            child: DefaultButton(
              text: "Sign up",
              borderRadius: 15,
              press: () {
                Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
              },
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(5)),

          // already have account
          const AlreadyHaveAnAccount(),

          // welcome picture
          SizedBox(height: getProportionateScreenWidth(5)),
          const WelcomeBottomImage(),
        ],
      ),
    );
  }
}
