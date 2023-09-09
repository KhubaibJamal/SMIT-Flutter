import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_project/size_config.dart';

import '../colors.dart';
import 'cart_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: AppColor.kTextDarkColor,
            ),
          ),
          const Spacer(),
          SvgPicture.asset(
            'assets/icons/Search.svg',
            colorFilter: const ColorFilter.mode(
              AppColor.kTextDarkColor,
              BlendMode.srcIn,
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(25)),
          const CartIconButton(
            colorFilter: ColorFilter.mode(
              AppColor.kTextDarkColor,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
      leading: Container(
        margin: EdgeInsets.all(getProportionateScreenWidth(8)),
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          color: AppColor.kGreyColor,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
        ),
      ),
    );
  }
}
