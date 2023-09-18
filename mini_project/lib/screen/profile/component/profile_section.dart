import 'package:flutter/material.dart';
import 'package:mini_project/screen/profile/component/profile_image.dart';

import '../../../colors.dart';
import '../../../constant.dart';
import '../../../size_config.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // profile section
        const ProfileImage(),
        // name
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Khubaib Jamal",
              style: headingStyle.copyWith(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(20),
              ),
            ),
            Text(
              "khubaib.j18@hotmail.com",
              style: subHeadingStyle.copyWith(color: Colors.black),
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: AppColor.kSecondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("Edit", style: homeDeliveryTextStyle)),
            )
          ],
        ),
      ],
    );
  }
}
