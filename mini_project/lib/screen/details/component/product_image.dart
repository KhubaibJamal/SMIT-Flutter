import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../constant.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({super.key});

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset(
            'assets/images/item.png',
            color: AppColor.kIconColor,
            scale: 0.5,
          ),
        ),
        Row(
          children: List.generate(
            3,
            (index) => buildDots(index: index),
          ),
        ),
      ],
    );
  }

  AnimatedContainer buildDots({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 30 : 20,
      decoration: BoxDecoration(
        color: currentPage == index
            ? AppColor.kSecondaryColor
            : const Color(0xFFF8F9FB).withOpacity(0.3),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
