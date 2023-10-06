import 'package:flutter/material.dart';
import 'package:signin_signup_form/component/google_button.dart';
import 'package:signin_signup_form/screens/sign%20up/component/sign_up_image_with_button.dart';
import 'package:signin_signup_form/screens/sign%20up/component/signup_form.dart';
import 'package:signin_signup_form/size_config.dart';

import '../../../const.dart';
import '../../../component/continue_with_text.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              // sign up text
              Text(
                "Sign up to Shh!",
                style: defaultTextStyle.copyWith(
                    fontSize: getProportionateScreenWidth(30)),
              ),

              // google button
              SizedBox(height: getProportionateScreenWidth(15)),
              SizedBox(
                width: SizeConfig.screenWidth! * 0.8,
                child: GoogleButton(
                  text: "Sign up with Google",
                  press: () {},
                ),
              ),

              // continue with email
              SizedBox(height: getProportionateScreenWidth(15)),
              const ContinueWithText(text: "or continue with Email"),

              // sign up form
              const SignUpForm(),

              // image and create account button
              const SignUpImageWithButton(),
            ],
          ),
        ),
      ),
    );
  }
}
