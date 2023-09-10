import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_project/screen/category/category_screen.dart';
import 'package:mini_project/screen/favorite/favorite_screen.dart';

import '../colors.dart';
import '../screen/home/home_screen.dart';
import '../screen/more/more_screen.dart';

class CustomCurveNavigationBar extends StatefulWidget {
  const CustomCurveNavigationBar({super.key});

  @override
  State<CustomCurveNavigationBar> createState() =>
      _CustomCurveNavigationBarState();
}

class _CustomCurveNavigationBarState extends State<CustomCurveNavigationBar> {
  int currentIndex = 0;

  final screen = [
    HomeScreen(),
    CategoryScreen(),
    const FavoriteScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screen[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: AppColor.kTextDarkColor,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
        animationCurve: Curves.bounceInOut,
        height: 60,
        index: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          SvgPicture.asset(
            'assets/icons/home.svg',
            colorFilter: ColorFilter.mode(
              currentIndex == 0 ? AppColor.kSecondaryColor : Colors.black,
              BlendMode.srcIn,
            ),
          ),
          SvgPicture.asset(
            'assets/icons/Category.svg',
            colorFilter: ColorFilter.mode(
              currentIndex == 1 ? AppColor.kSecondaryColor : Colors.black,
              BlendMode.srcIn,
            ),
          ),
          SvgPicture.asset(
            'assets/icons/Heart.svg',
            colorFilter: ColorFilter.mode(
              currentIndex == 2 ? AppColor.kSecondaryColor : Colors.black,
              BlendMode.srcIn,
            ),
          ),
          SvgPicture.asset(
            'assets/icons/more_vertical.svg',
            colorFilter: ColorFilter.mode(
              currentIndex == 3 ? AppColor.kSecondaryColor : Colors.black,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }
}
