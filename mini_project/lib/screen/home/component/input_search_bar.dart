import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../size_config.dart';

class InputSearchBar extends StatelessWidget {
  const InputSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.9,
      decoration: BoxDecoration(
        color: AppColor.kPrimaryDarkColor,
        // color: Colors.red,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: "Search Products",
          hintStyle: const TextStyle(
            color: AppColor.kGreyLightColor,
          ),
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(19),
          ),
          prefixIcon: const Icon(Icons.search, color: AppColor.kGreyLightColor),
        ),
      ),
    );
  }
}
