import 'package:flutter/material.dart';
import 'package:signin_signup_form/screens/sign%20up/sign_up_screen.dart';

import '../../../component/default_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class SignInImageWithButton extends StatelessWidget {
  const SignInImageWithButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight! * 0.4,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/images/login.png',
              scale: 0.5,
            ),
          ),
          Positioned(
            left: getProportionateScreenWidth(10),
            top: getProportionateScreenWidth(15),
            child: Column(
              children: [
                SizedBox(
                  width: SizeConfig.screenWidth! * 0.5,
                  child: DefaultButton(
                    text: "Login Account",
                    borderRadius: 30,
                    press: () {},
                  ),
                ),
                SizedBox(height: getProportionateScreenWidth(10)),
                Text(
                  "Already have an account?",
                  style: defaultTextStyle,
                ),
                SizedBox(height: getProportionateScreenWidth(10)),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignUpScreen.routeName);
                  },
                  child: Text(
                    "Sign UP",
                    style: defaultTextStyle.copyWith(color: blackColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
