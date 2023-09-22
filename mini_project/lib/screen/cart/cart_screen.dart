import 'package:flutter/material.dart';
import 'package:mini_project/screen/cart/component/body.dart';

import '../../colors.dart';
import '../../size_config.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(
            color: AppColor.kGreyColor,
            fontWeight: FontWeight.w600,
            fontSize: getProportionateScreenWidth(24),
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
