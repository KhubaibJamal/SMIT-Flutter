import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../constant.dart';
import '../../../size_config.dart';

class TotalText extends StatelessWidget {
  const TotalText({
    super.key,
    required this.title,
    required this.price,
  });
  final String title, price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: homeDeliveryLightTextStyle.copyWith(
            fontSize: getProportionateScreenWidth(18),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "\$$price",
          style: homeDeliveryLightTextStyle.copyWith(
            fontSize: getProportionateScreenWidth(18),
            fontWeight: FontWeight.bold,
            color: AppColor.kTextDarkColor,
          ),
        ),
      ],
    );
  }
}
