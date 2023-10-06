import 'package:flutter/material.dart';
import 'package:signin_signup_form/size_config.dart';

const scaffoldBgColor = Color(0xFF8C5CB3);
const blackColor = Color(0xFF000000);
const whiteColor = Color(0xFFFFFFFF);
const textFieldBgColor = Color(0xFFD9D9D9);
const lightBlack = Color(0xFF1E1E1E);

final defaultTextStyle = TextStyle(
  color: whiteColor,
  fontSize: getProportionateScreenWidth(18),
  fontWeight: FontWeight.w700,
);

// input border decoration
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide.none,
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
