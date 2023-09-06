import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'category_container.dart';

import 'category_item.dart';
import 'header_container.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderContainer(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: getProportionateScreenWidth(15),
              horizontal: getProportionateScreenWidth(15),
            ),
            child: const Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: RowCategoryContainer(),
                ),
                CategoryItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
