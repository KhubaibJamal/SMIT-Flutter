import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';
import '../enum.dart';
import '../screen/home/home_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedMenu,
  });

  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    const Color inactiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA),
          )
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.home == selectedMenu
                      ? AppColor.kSecondaryColor
                      : inactiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Category.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.category == selectedMenu
                      ? AppColor.kSecondaryColor
                      : inactiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Heart.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.favorite == selectedMenu
                      ? AppColor.kSecondaryColor
                      : inactiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, ProfileScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/more_vertical.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.more == selectedMenu
                      ? AppColor.kSecondaryColor
                      : inactiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
