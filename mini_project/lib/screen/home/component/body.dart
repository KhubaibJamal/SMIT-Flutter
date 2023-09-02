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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
