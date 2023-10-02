import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome To Shh!",
            style: TextStyle(
              color: whiteColor,
              fontSize: getProportionateScreenWidth(45),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(8)),
          Text(
            "A Hub Where Whispers Echo Loudest",
            style: TextStyle(
              color: lightBlack,
              fontSize: getProportionateScreenWidth(23),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
