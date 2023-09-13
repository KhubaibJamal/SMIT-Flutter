import 'package:flutter/material.dart';
import 'package:mini_project/model/product.dart';

import '../../../colors.dart';
import '../../../component/product_card.dart';
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
          itemCount: demoProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            crossAxisCount: 2,
            childAspectRatio: getProportionateScreenWidth(0.65),
          ),
          itemBuilder: (context, index) {
            return ProductCard(product: demoProducts[index], press: () {});
          },
        ),
      ],
    );
  }
}
