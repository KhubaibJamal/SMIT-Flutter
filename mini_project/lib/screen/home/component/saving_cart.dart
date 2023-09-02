import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../size_config.dart';

class SavingCart extends StatelessWidget {
  final String itemText, timeText, subText;
  final Color bgColor;
  const SavingCart({
    super.key,
    required this.itemText,
    required this.timeText,
    required this.subText,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(15)),
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(25)),
        height: SizeConfig.screenHeight! / 6,
        width: SizeConfig.screenWidth! / 2,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "$itemText ",
                  style: TextStyle(
                    color: AppColor.kTextDarkColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenWidth(25),
                  ),
                ),
                Text(
                  timeText,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(20),
                  ),
                ),
              ],
            ),
            Text(
              subText,
              style: TextStyle(
                color: AppColor.kTextDarkColor,
                fontWeight: FontWeight.w500,
                fontSize: getProportionateScreenWidth(15),
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
