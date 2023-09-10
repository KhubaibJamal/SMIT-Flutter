import 'package:flutter/material.dart';
import 'package:mini_project/size_config.dart';

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
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(25)),
        decoration: const BoxDecoration(
          color: AppColor.kGreyColor,
          shape: BoxShape.circle,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Image.asset(
                        'assets/images/item.png',
                        color: AppColor.kIconColor,
                        // scale: 0.75,
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => buildDots(index: index),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDots({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: 30,
      decoration: BoxDecoration(
        color: currentPage == index
            ? AppColor.kSecondaryColor
            : const Color(0xFFE4E4E4),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
