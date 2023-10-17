import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../helper/helper.dart';
import '../../../size_config.dart';

class SignInform extends StatefulWidget {
  const SignInform({super.key});

  @override
  State<SignInform> createState() => _SignInformState();
}

class _SignInformState extends State<SignInform> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void setUserEmailAndPassword() {
    Helper.setUserEmail(emailController.text);
    Helper.setUserPassword(passwordController.text);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
            const SizedBox(height: 5),
            TextFormField(
              controller: emailController,
              decoration: inputDecoration(hintText: "Enter your Email"),
            ),

            // user password
            SizedBox(height: getProportionateScreenHeight(18)),
            Text('Password', style: defaultTextStyle),
            const SizedBox(height: 5),
            TextFormField(
              controller: passwordController,
              onEditingComplete: () {
                // un-focus on screen keyboard
                FocusManager.instance.primaryFocus?.unfocus();
                setUserEmailAndPassword();
              },
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
