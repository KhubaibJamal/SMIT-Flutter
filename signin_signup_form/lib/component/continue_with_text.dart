import 'package:flutter/material.dart';

import '../const.dart';
import '../size_config.dart';

class ContinueWithText extends StatelessWidget {
  final String text;
  const ContinueWithText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: getProportionateScreenWidth(12)),
        const Expanded(
          child: Divider(color: blackColor),
        ),
        SizedBox(width: getProportionateScreenWidth(10)),
        Text(
          text,
          style: defaultTextStyle.copyWith(color: blackColor),
        ),
        SizedBox(width: getProportionateScreenWidth(10)),
        const Expanded(
          child: Divider(color: blackColor),
        ),
        SizedBox(width: getProportionateScreenWidth(12)),
      ],
    );
  }
}
