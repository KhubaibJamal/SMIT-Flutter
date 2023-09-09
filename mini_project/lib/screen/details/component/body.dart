import 'package:flutter/material.dart';
import 'package:mini_project/screen/details/component/product_image.dart';
import 'package:mini_project/size_config.dart';

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
        SizedBox(height: SizeConfig.screenHeight! * 0.04),
        ProductImage(),
        Expanded(child: Container(color: Colors.red))
      ],
    );
  }
}
