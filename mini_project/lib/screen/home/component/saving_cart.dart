import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../size_config.dart';

class SavingCarts extends StatelessWidget {
  const SavingCarts({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: getProportionateScreenWidth(-12),
          left: getProportionateScreenWidth(-10),
          child: Image.asset("assets/images/ellipse1.png"),
        ),
        Positioned(
          right: getProportionateScreenWidth(140),
          top: getProportionateScreenWidth(20),
          child: Image.asset("assets/images/ellipse2.png"),
        ),
        Positioned(
          right: getProportionateScreenWidth(180),
          bottom: -5,
          child: Image.asset(
            "assets/images/ellipse3.png",
            color: AppColor.kPrimaryColor,
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SavingCart(
              itemText: "346",
              timeText: "USD",
              subText: "Your Total Saving",
              bgColor: AppColor.kSecondaryLightColor,
            ),
            SavingCart(
              itemText: "215",
              timeText: "HRS",
              subText: "Your Time Saving",
              bgColor: Color(0xFFE4DDCB),
            ),
          ],
        ),
        Positioned(
          right: -1,
          top: 50,
          child: Image.asset("assets/images/ellipse3.png"),
        ),
      ],
    );
  }
}

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
      padding: EdgeInsets.only(right: getProportionateScreenWidth(15)),
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(25)),
        height: SizeConfig.screenHeight! / 6,
        width: SizeConfig.screenWidth! / 2.5,
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
