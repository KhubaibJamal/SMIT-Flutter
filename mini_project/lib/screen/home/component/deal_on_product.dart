import 'package:flutter/material.dart';
import 'package:mini_project/model/deal_model.dart';

import '../../../colors.dart';
import '../../../component/custom_product_card.dart';
import '../../../size_config.dart';

class DealOnProducts extends StatelessWidget {
  const DealOnProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Deals on Fruits & Tea",
          style: TextStyle(
            color: AppColor.kTextDarkColor,
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: dealDemo.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              crossAxisCount: 2,
              childAspectRatio: getProportionateScreenWidth(0.85)),
          itemBuilder: (context, index) {
            return CustomProductCard(
              price: dealDemo[index]["price"],
              name: dealDemo[index]["name"],
            );
          },
        ),
      ],
    );
  }
}
