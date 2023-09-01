import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  final String? heading, subHeading;
  const SplashContent({
    super.key,
    required this.heading,
    required this.subHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading!,
          style: headingStyle,
        ),
        // const SizedBox(width: 10),
        // SvgPicture.asset('assets/icons/splash icon.svg'),
        SizedBox(height: getProportionateScreenWidth(20)),
        Text(
          subHeading!,
          style: subHeadingStyle,
        ),
      ],
    );
  }
}
