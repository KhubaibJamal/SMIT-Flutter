import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../constant.dart';
import '../../../size_config.dart';

class DetailScreenBtn extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final VoidCallback press;
  const DetailScreenBtn({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: AppColor.kPrimaryColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        backgroundColor: bgColor,
      ),
      onPressed: press,
      child: Text(
        text,
        style: headingStyle.copyWith(
          color: textColor,
          fontSize: getProportionateScreenWidth(18.0),
        ),
      ),
    );
  }
}
