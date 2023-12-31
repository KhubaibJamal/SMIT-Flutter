import 'package:flutter/material.dart';
import 'package:signin_signup_form/helper/helper.dart';
import 'package:signin_signup_form/screens/home/home_screen.dart';
import 'package:signin_signup_form/services/auth_services.dart';

import '../../../component/default_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';
import '../../sign in/sign_in_screen.dart';

class SignUpImageWithButton extends StatelessWidget {
  const SignUpImageWithButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                  press: () async {
                    final email = await Helper.getUserEmail();
                    final password = await Helper.getUserPassword();
                    AuthServices.signUp(email!, password!);
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
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
                onTap: () {
                  Navigator.pushNamed(context, SignInScreen.routeName);
                },
                child: Text(
                  "Login",
                  style: defaultTextStyle.copyWith(color: blackColor),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
