import 'package:flutter/material.dart';
import 'package:ligh_dark_theme/size_config.dart';

import '../../../constant.dart';

class ProductDescription extends StatelessWidget {
  final String title;
  const ProductDescription({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineLarge),
        SizedBox(height: getProportionateScreenWidth(15)),
        Text(
          productDescription,
          textAlign: TextAlign.justify,
          maxLines: 3,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                height: 1.2,
              ),
        ),
      ],
    );
  }
}
