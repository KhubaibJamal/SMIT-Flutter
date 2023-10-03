import 'package:flutter/material.dart';
import 'package:signin_signup_form/const.dart';
import 'package:signin_signup_form/size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  bool isChecked = false;
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

            SizedBox(height: getProportionateScreenHeight(20)),

            // user email
            TextFormField(
              decoration: inputDecoration(hintText: "Enter your Email"),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),

            // user password
            TextFormField(
              decoration: inputDecoration(hintText: "Enter your Password"),
            ),

            SizedBox(height: getProportionateScreenHeight(20)),

            // confirm password
            TextFormField(
              decoration: inputDecoration(hintText: "Re-Enter your Password "),
            ),

            SizedBox(height: getProportionateScreenHeight(8)),
            // terms and conditions
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

  InputDecoration inputDecoration({required String hintText}) {
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(8),
        horizontal: getProportionateScreenWidth(15),
      ),
      constraints: BoxConstraints(
        maxHeight: getProportionateScreenWidth(50),
      ),
      filled: true,
      fillColor: textFieldBgColor,
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: getProportionateScreenWidth(20),
        fontWeight: FontWeight.w700,
      ),
      border: outlineInputBorder(),
      enabledBorder: outlineInputBorder(),
      focusedBorder: outlineInputBorder(),
    );
  }
}
