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
          itemCount: demoProducts.fold<int>(
            0,
            (count, product) => product.isPopular ? count + 1 : count,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            crossAxisCount: 2,
            childAspectRatio: getProportionateScreenWidth(0.65),
          ),
          itemBuilder: (context, index) {
            // Find the index of the favorite product at the current index
            int popularIndex = 0;
            for (int i = 0; i < demoProducts.length; i++) {
              if (demoProducts[i].isPopular) {
                if (popularIndex == index) {
                  // Return the favorite product at the current index
                  return ProductCard(
                    product: demoProducts[i],
                    press: () {},
                  );
                }
                popularIndex++;
              }
            }

            // Return an empty container for non-favorite products
            return Container(
              child: Text("data"),
            );
          },
        ),
      ],
    );
  }
}
