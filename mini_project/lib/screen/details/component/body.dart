import 'package:flutter/material.dart';
import 'package:mini_project/screen/details/component/product_description.dart';
import 'package:mini_project/screen/details/component/product_image.dart';
import 'package:mini_project/size_config.dart';

import '../../../colors.dart';

class Body extends StatelessWidget {
  final String title, price, subTitle;
  const Body({
    Key? key,
    required this.title,
    required this.price,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProductImage(),
        SizedBox(height: getProportionateScreenWidth(20)),
        Expanded(
          flex: 2,
          child: Container(
            width: SizeConfig.screenWidth! * 0.9,
            padding: EdgeInsets.symmetric(
              vertical: getProportionateScreenWidth(20),
              horizontal: getProportionateScreenWidth(20),
            ),
            decoration: BoxDecoration(
              color: AppColor.kCartColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ProductDescription(title: title, price: price),
          ),
        ),
      ],
    );
  }
}
