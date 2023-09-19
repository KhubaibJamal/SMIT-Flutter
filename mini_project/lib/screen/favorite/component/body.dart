import 'package:flutter/material.dart';

import '../../../component/product_card.dart';
import '../../../model/product.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // return GridView.builder(
    //   itemCount: demoProducts.length,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisSpacing: 10.0,
    //     mainAxisSpacing: 10.0,
    //     crossAxisCount: 2,
    //     childAspectRatio: getProportionateScreenWidth(0.65),
    //   ),
    //   itemBuilder: (context, index) {
    //     if (demoProducts[index].isFavorite) {
    //       return ProductCard(product: demoProducts[index], press: () {});
    //     } else {
    //       // Return an empty container for non-favorite products
    //       return Container(
    //         child: Text("data"),
    //       );
    //     }
    //   },
    // );

    return GridView.builder(
      itemCount: demoProducts.fold<int>(
        0,
        (count, product) => product.isFavorite ? count + 1 : count,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        crossAxisCount: 2,
        childAspectRatio: getProportionateScreenWidth(0.65),
      ),
      itemBuilder: (context, index) {
        // Find the index of the favorite product at the current index
        int favoriteIndex = 0;
        for (int i = 0; i < demoProducts.length; i++) {
          if (demoProducts[i].isFavorite) {
            if (favoriteIndex == index) {
              // Return the favorite product at the current index
              return ProductCard(
                product: demoProducts[i],
                press: () {},
              );
            }
            favoriteIndex++;
          }
        }

        // Return an empty container for non-favorite products
        return const Center(child: Text("No Favorite Item"));
      },
    );
  }
}
