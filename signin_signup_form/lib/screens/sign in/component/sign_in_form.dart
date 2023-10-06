import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class SignInform extends StatefulWidget {
  const SignInform({super.key});

  @override
  State<SignInform> createState() => _SignInformState();
}

class _SignInformState extends State<SignInform> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // user email
            SizedBox(height: getProportionateScreenHeight(18)),
            Text('Email', style: defaultTextStyle),
            TextFormField(
              decoration: inputDecoration(hintText: "Enter your Email"),
            ),

            // user password
            SizedBox(height: getProportionateScreenHeight(18)),
            Text('Password', style: defaultTextStyle),
            TextFormField(
              decoration: inputDecoration(hintText: "Enter your Password"),
            ),

            // forget password
            SizedBox(height: getProportionateScreenHeight(18)),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {},
                child: Text('Forgot Password?', style: defaultTextStyle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
