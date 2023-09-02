import 'package:flutter/material.dart';
import 'package:mini_project/colors.dart';
import 'package:mini_project/screen/home/component/popular_products.dart';
import 'package:mini_project/screen/home/component/search_bar.dart';
import 'package:mini_project/size_config.dart';

import '../../../component/cart_icon_button.dart';
import '../../../component/header_text.dart';
import 'delivery_text.dart';
import 'home_banner.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(30),
            ),
            color: AppColor.kPrimaryColor,
            child: Column(
              children: [
                const Row(
                  children: [
                    HeaderText(),
                    Spacer(),
                    CartIconButton(),
                  ],
                ),
                SizedBox(height: getProportionateScreenWidth(30)),
                const InputSearchBar(),
                SizedBox(height: getProportionateScreenWidth(25)),
                const DeliveryText(),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenWidth(15),
                horizontal: getProportionateScreenWidth(15),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          HomeBanner(bgColor: AppColor.kSecondaryColor),
                          HomeBanner(bgColor: Color(0xFFE4DDCB)),
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenWidth(20)),
                    const PopularProducts(),
                    SizedBox(height: getProportionateScreenWidth(20)),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
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
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
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
