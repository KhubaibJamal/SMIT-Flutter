import 'package:flutter/material.dart';
import 'package:mini_project/screen/details/component/product_description.dart';
import 'package:mini_project/screen/details/component/product_image.dart';
import 'package:mini_project/size_config.dart';

import '../../../colors.dart';
import '../../../model/product.dart';

class Body extends StatefulWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImage(product: widget.product),
        SizedBox(height: getProportionateScreenWidth(10)),
        Expanded(
          child: Container(
            // width: SizeConfig.screenWidth! * 0.9,
            padding: EdgeInsets.symmetric(
              vertical: getProportionateScreenWidth(20),
              horizontal: getProportionateScreenWidth(20),
            ),
            decoration: BoxDecoration(
              color: AppColor.kCartColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ProductDescription(product: widget.product),
          ),
        ),
      ],
    );
  }
}
