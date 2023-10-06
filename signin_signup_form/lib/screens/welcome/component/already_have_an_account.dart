import 'package:flutter/material.dart';
import 'package:signin_signup_form/screens/sign%20in/sign_in_screen.dart';

import '../../../const.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account?", style: defaultTextStyle),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignInScreen.routeName);
          },
          child: Text(
            " Login",
            style: defaultTextStyle.copyWith(color: blackColor),
          ),
        ),
      ],
    );
  }
}
