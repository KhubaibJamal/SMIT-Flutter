import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_project/model/cart.dart';
import 'package:mini_project/screen/cart/cart_screen.dart';

import '../colors.dart';
import '../size_config.dart';

class CartIconButton extends StatelessWidget {
  final ColorFilter? colorFilter;
  const CartIconButton({
    super.key,
    this.colorFilter,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CartScreen.routeName);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              'assets/icons/bag icon.svg',
              colorFilter: colorFilter,
            ),
          ),
          Positioned(
            right: 0,
            top: -3,
            child: Container(
              width: getProportionateScreenWidth(20),
              height: getProportionateScreenWidth(20),
              decoration: const BoxDecoration(
                color: AppColor.kSecondaryLightColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  "${cart.length}",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(12),
                    color: Colors.white,
                    height: 1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
