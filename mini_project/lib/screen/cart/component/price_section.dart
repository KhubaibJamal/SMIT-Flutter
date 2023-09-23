import 'package:flutter/material.dart';
import 'package:mini_project/screen/cart/component/total_text.dart';

import '../../../colors.dart';
import '../../../model/cart.dart';
import '../../../size_config.dart';
import 'check_out_btn.dart';

class PriceSection extends StatefulWidget {
  const PriceSection({
    super.key,
  });

  @override
  State<PriceSection> createState() => _PriceSectionState();
}

class _PriceSectionState extends State<PriceSection> {
  double subTotal = 0.0;
  double delivery = 10.00;
  double total = 0.0;

  @override
  void initState() {
    calculateSubtotal();
    super.initState();
  }

  void calculateSubtotal() {
    for (var i in cart) {
      if (i.containsKey("price")) {
        subTotal += double.parse(i["price"].toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(20),
          horizontal: getProportionateScreenWidth(20),
        ),
        decoration: BoxDecoration(
          color: AppColor.kCartColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            TotalText(
              title: 'Subtotal',
              price: "$subTotal",
            ),
            TotalText(
              title: 'Delivery',
              price: "$delivery",
            ),
            TotalText(
              title: 'Total',
              price: "${subTotal + delivery}",
            ),

            // check out button
            CheckOutBtn(text: "Proceed To checkout", press: () {}),
          ],
        ),
      ),
    );
  }
}
