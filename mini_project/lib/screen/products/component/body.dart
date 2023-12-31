import 'package:flutter/material.dart';
import 'package:mini_project/component/product_card.dart';
import 'package:mini_project/screen/details/detail_screen.dart';
import 'package:mini_project/size_config.dart';

import '../../../model/product.dart';
import '../../../model/product_model.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(15),
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: productCardDemoList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          crossAxisCount: 2,
          childAspectRatio: getProportionateScreenWidth(0.65),
        ),
        itemBuilder: (context, index) {
          return ProductCard(
            product: demoProducts[index],
            press: () {
              Navigator.pushNamed(
                context,
                DetailScreen.routeName,
                arguments: ProductsDetailsArguments(
                  product: demoProducts[index],
                ),
              );
            },
            favoritePress: () {},
          );
        },
      ),
    );
  }
}
