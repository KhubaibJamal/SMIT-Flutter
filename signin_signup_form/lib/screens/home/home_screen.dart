import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:signin_signup_form/component/default_button.dart';
import 'package:signin_signup_form/helper/helper.dart';
import 'package:signin_signup_form/size_config.dart';

import '../../const.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome\n${user!.email}", style: defaultTextStyle),
            SizedBox(height: getProportionateScreenWidth(10)),
            SizedBox(
              width: SizeConfig.screenWidth! / 2,
              child: DefaultButton(
                text: "Sign Out",
                press: () {
                  FirebaseAuth.instance.signOut();
                  Helper.removeUser();
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
