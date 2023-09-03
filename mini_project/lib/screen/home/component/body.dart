import 'package:flutter/material.dart';
import 'package:mini_project/colors.dart';
import 'package:mini_project/screen/home/component/popular_products.dart';
import 'package:mini_project/screen/home/component/saving_cart.dart';
import 'package:mini_project/screen/home/component/input_search_bar.dart';
import 'package:mini_project/size_config.dart';
import 'deal_on_product.dart';
import 'delivery_text.dart';
import 'home_banner.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(30),
          ),
          color: AppColor.kPrimaryColor,
          child: Column(
            children: [
              const InputSearchBar(),
              SizedBox(height: getProportionateScreenWidth(25)),
              const DeliveryText(),
            ],
          ),
        ),
        Padding(
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
                SizedBox(height: getProportionateScreenWidth(30)),
                const PopularProducts(),
                SizedBox(height: getProportionateScreenWidth(30)),
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
                ),
                SizedBox(height: getProportionateScreenWidth(30)),
                const DealOnProducts(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
