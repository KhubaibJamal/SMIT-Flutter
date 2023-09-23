import 'package:flutter/material.dart';
import 'package:mini_project/colors.dart';
import 'package:mini_project/constant.dart';
import 'package:mini_project/screen/cart/component/price_section.dart';
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
        : Center(
            child: Text(
              "Your Cart is Empty",
              style: headingStyle.copyWith(color: AppColor.kTextDarkColor),
            ),
          );
  }
}
