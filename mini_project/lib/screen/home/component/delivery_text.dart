import 'package:flutter/material.dart';
import 'package:mini_project/constant.dart';

import '../../../colors.dart';
import '../../../size_config.dart';

class DeliveryText extends StatelessWidget {
  const DeliveryText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Delivery to", style: homeDeliveryLightTextStyle),
            SizedBox(height: getProportionateScreenWidth(8)),
            Row(
              children: [
                Text("Green Way 3000, Sylhet", style: homeDeliveryTextStyle),
                const DownIcon(),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Within", style: homeDeliveryLightTextStyle),
            SizedBox(height: getProportionateScreenWidth(8)),
            Row(
              children: [
                Text("1 Hour", style: homeDeliveryTextStyle),
                const DownIcon(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class DownIcon extends StatelessWidget {
  const DownIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.arrow_drop_down,
      color: AppColor.kGreyLightColor,
    );
  }
}
