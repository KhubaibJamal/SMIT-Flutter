import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../size_config.dart';

class CheckOutBtn extends StatelessWidget {
  final String text;
  final VoidCallback press;
  const CheckOutBtn({super.key, required this.text, required this.press});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          foregroundColor: Colors.white,
          backgroundColor: AppColor.kPrimaryColor,
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
