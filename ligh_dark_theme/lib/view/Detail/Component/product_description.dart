import 'package:flutter/material.dart';
import 'package:ligh_dark_theme/size_config.dart';

class ProductDescription extends StatelessWidget {
  final String title;
  const ProductDescription({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    const String text =
        'A super-fresh and zingy salad packed with green veg and gnarly, sticky-sweet chicken, topped with crispy shallots. Delicious!';

    return Column(
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineLarge),
        SizedBox(height: getProportionateScreenWidth(15)),
        Text(
          text,
          textAlign: TextAlign.justify,
          maxLines: 3,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: const Color(0xff464e5c),
                height: 1.2,
              ),
        ),
      ],
    );
  }
}
