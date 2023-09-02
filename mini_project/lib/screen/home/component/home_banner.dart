import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../size_config.dart';

class HomeBanner extends StatelessWidget {
  final Color bgColor;
  const HomeBanner({
    super.key,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(15)),
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        height: SizeConfig.screenHeight! / 6,
        width: SizeConfig.screenWidth! * 0.7,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Image.asset('assets/images/item.png'),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Get",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(18)),
                ),
                Text(
                  "50% OFF",
                  style: TextStyle(
                    color: AppColor.kGreyColor,
                    fontWeight: FontWeight.w600,
                    fontSize: getProportionateScreenWidth(24),
                  ),
                ),
                Text(
                  "On first 03 order",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
