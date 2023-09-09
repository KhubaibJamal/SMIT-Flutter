import 'package:flutter/material.dart';

import '../colors.dart';
import '../size_config.dart';

class CustomProductCard extends StatelessWidget {
  final String? name, price, subTitle;
  const CustomProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      decoration: BoxDecoration(
        color: AppColor.kCartColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/item.png',
                  scale: 0.75,
                ),
              ),
              Positioned(
                bottom: -10,
                right: -10,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: AppColor.kPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenWidth(25)),
          Text(
            name!,
            style: TextStyle(
              color: AppColor.kTextDarkColor,
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            price!,
            style: TextStyle(
              color: AppColor.kTextDarkColor,
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            subTitle!,
            softWrap: true,
            overflow: TextOverflow.clip,
            style: const TextStyle(
              color: AppColor.kCartSubTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
