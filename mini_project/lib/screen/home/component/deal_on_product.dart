import 'package:flutter/material.dart';
import 'package:mini_project/model/product_model.dart';

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
          itemCount: productCardDemoList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            crossAxisCount: 2,
            childAspectRatio: getProportionateScreenWidth(0.75),
          ),
          itemBuilder: (context, index) {
            return CustomProductCard(
              name: "${productCardDemoList[index]["name"]}",
              price: "${productCardDemoList[index]["price"]}",
              subTitle: "${productCardDemoList[index]["subtitle"]}",
            );
          },
        ),
      ],
    );
  }
}
