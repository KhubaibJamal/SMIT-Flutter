import 'package:flutter/material.dart';

import '../colors.dart';
import '../size_config.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hey, Khubaib",
      style: TextStyle(
        color: AppColor.kGreyColor,
        fontWeight: FontWeight.w600,
        fontSize: getProportionateScreenWidth(24),
      ),
    );
  }
}
