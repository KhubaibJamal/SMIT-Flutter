import 'package:flutter/material.dart';
import 'package:signin_signup_form/const.dart';
import 'package:signin_signup_form/helper/helper.dart';
import 'package:signin_signup_form/size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  bool isChecked = false;

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
          children: [
            // user name
            TextFormField(
              decoration: inputDecoration(hintText: "Enter your name"),
            ),

            // user email
            SizedBox(height: getProportionateScreenHeight(18)),
            TextFormField(
              controller: emailController,
              decoration: inputDecoration(hintText: "Enter your Email"),
            ),

            // user password
            SizedBox(height: getProportionateScreenHeight(18)),
            TextFormField(
              controller: passwordController,
              decoration: inputDecoration(hintText: "Enter your Password"),
            ),

            // confirm password
            SizedBox(height: getProportionateScreenHeight(18)),
            TextFormField(
              onEditingComplete: () {
                // un-focus on screen keyboard
                FocusManager.instance.primaryFocus?.unfocus();
                setUserEmailAndPassword();
              },
              decoration: inputDecoration(hintText: "Re-Enter your Password "),
            ),

            // terms and conditions
            SizedBox(height: getProportionateScreenHeight(8)),
            Row(
              children: [
                Checkbox(
                  checkColor: blackColor,
                  activeColor: whiteColor,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text(
                  "I agree with the Terms of Service and \nPrivacy policy",
                  style: defaultTextStyle.copyWith(
                      fontSize: getProportionateScreenWidth(15)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
