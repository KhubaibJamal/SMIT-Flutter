import 'package:flutter/material.dart';
import 'package:mini_project/constant.dart';
import 'package:mini_project/size_config.dart';

import '../../../colors.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight! * 0.04),
          Expanded(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: getProportionateScreenWidth(8)),
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(5)),
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 18,
                    ),
                  ),
                ),
                SizedBox(width: getProportionateScreenWidth(50)),
                Text(
                  "Shopping Cart",
                  style: headingStyle.copyWith(
                    color: AppColor.kTextDarkColor,
                    fontSize: getProportionateScreenWidth(20),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
              )),
        ],
      ),
    );
  }
}
