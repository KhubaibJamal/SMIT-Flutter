import 'package:flutter/material.dart';

import '../../../component/continue_with_text.dart';
import '../../../component/google_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight! * 0.04),

            // log in text
            Text(
              "Log in to Shh!",
              style: defaultTextStyle.copyWith(
                  fontSize: getProportionateScreenWidth(30)),
            ),

            // google button
            SizedBox(height: getProportionateScreenWidth(15)),
            SizedBox(
              width: SizeConfig.screenWidth! * 0.8,
              child: GoogleButton(
                text: "Log in with Google",
                press: () {},
              ),
            ),

            // continue with email
            SizedBox(height: getProportionateScreenWidth(15)),
            const ContinueWithText(text: "or log in with Email"),
          ],
        ),
      ),
    );
  }
}
