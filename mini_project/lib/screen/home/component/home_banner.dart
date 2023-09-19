import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../size_config.dart';

class HomeBanner extends StatelessWidget {
  final String image;
  const HomeBanner({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getProportionateScreenWidth(15)),
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFF343434).withOpacity(0.4),
                      const Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15),
                  vertical: getProportionateScreenWidth(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Get",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(18)),
                    ),
                    Text(
                      "50% OFF",
                      style: TextStyle(
                        color: AppColor.kGreyColor,
                        fontWeight: FontWeight.w600,
                        fontSize: getProportionateScreenWidth(24),
                      ),
                    ),
                    Text(
                      "On first 03 order",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(18),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
