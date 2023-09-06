import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../size_config.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth!,
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(30),
      ),
      color: AppColor.kPrimaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shop",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(50),
              color: AppColor.kTextColor,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(15)),
          Text(
            "By Category",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(50),
              color: AppColor.kTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
