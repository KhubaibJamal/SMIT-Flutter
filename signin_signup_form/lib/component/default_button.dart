import 'package:flutter/material.dart';
import 'package:signin_signup_form/const.dart';

import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
    this.bgColor = blackColor,
    this.borderRadius = 12,
  }) : super(key: key);
  final String text;
  final Color? bgColor;
  final VoidCallback press;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
          foregroundColor: whiteColor,
          backgroundColor: bgColor,
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.bold,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
