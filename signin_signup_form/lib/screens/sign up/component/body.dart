import 'package:flutter/material.dart';
import 'package:signin_signup_form/component/default_button.dart';
import 'package:signin_signup_form/component/google_button.dart';
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
              Stack(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset(
                      'assets/images/signup.png',
                      scale: 0.5,
                    ),
                  ),
                  Positioned(
                    right: getProportionateScreenWidth(15),
                    top: getProportionateScreenWidth(15),
                    child: Column(
                      children: [
                        SizedBox(
                          width: SizeConfig.screenWidth! * 0.5,
                          child: DefaultButton(
                            text: "Create Account",
                            press: () {},
                            borderRadius: 30,
                          ),
                        ),
                        SizedBox(height: getProportionateScreenWidth(10)),
                        Text(
                          "Already have an account?",
                          style: defaultTextStyle,
                        ),
                        SizedBox(height: getProportionateScreenWidth(10)),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Login",
                            style: defaultTextStyle.copyWith(color: blackColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
