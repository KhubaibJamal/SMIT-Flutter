import 'package:flutter/material.dart';
import 'package:mini_project/screen/products/component/product_category_container.dart';
import 'package:mini_project/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight! * 0.04),
        RowProductCategoryContainer(),
      ],
    );
  }
}
