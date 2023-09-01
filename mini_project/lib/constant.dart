import 'package:flutter/material.dart';
import 'package:mini_project/size_config.dart';

import 'colors.dart';

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  color: AppColor.kTextColor,
  fontSize: getProportionateScreenWidth(30),
  fontFamily: "Manrope",
  fontWeight: FontWeight.bold,
);

final subHeadingStyle = TextStyle(
  color: AppColor.kTextLightColor,
  fontSize: getProportionateScreenWidth(18),
);
