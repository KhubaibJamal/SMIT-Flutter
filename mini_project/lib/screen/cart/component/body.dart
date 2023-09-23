import 'package:flutter/material.dart';
import 'package:mini_project/colors.dart';
import 'package:mini_project/constant.dart';
import 'package:mini_project/screen/cart/component/price_section.dart';
import 'package:mini_project/size_config.dart';
import '../../../model/cart.dart';
import 'cart_items.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return cart.isNotEmpty
        ? const Column(
            children: [
              // cart items
              CartItems(),

              // total price section
              PriceSection(),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/cart.png'),
              Text(
                "Your Cart is Empty",
                style: headingStyle.copyWith(
                  color: AppColor.kTextDarkColor,
                  fontSize: getProportionateScreenWidth(20),
                ),
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Text(
                  "Looks like you have not added anything to you cart. Go ahead & explore top categories",
                  textAlign: TextAlign.center,
                  style: subHeadingStyle,
                ),
              ),
            ],
          );
  }
}
