import 'package:flutter/material.dart';
import 'package:mini_project/colors.dart';
import 'package:mini_project/screen/splash/component/splash_content.dart';
import 'package:mini_project/size_config.dart';

import '../../../constant.dart';
import '../../home/home_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashText = [
    {
      "heading": "Your holiday\nshopping\ndelivered to Screen\ntwo",
      "subHeading":
          "There's something for everyone to enjoy with Sweet Shop Favorites Screen 2",
    },
    {
      "heading": "Your holiday\nshopping\ndelivered to Screen\none",
      "subHeading":
          "There's something for everyone to enjoy with Sweet Shop Favorites Screen 1",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(30),
          vertical: getProportionateScreenWidth(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashText.length,
                itemBuilder: (context, index) {
                  return SplashContent(
                    heading: splashText[index]["heading"],
                    subHeading: splashText[index]["subHeading"],
                  );
                },
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    children: List.generate(
                      splashText.length,
                      (index) => buildDots(index: index),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenWidth(15)),
                  SizedBox(
                    height: SizeConfig.screenHeight! * 0.4,
                    width: SizeConfig.screenWidth! * 0.6,
                    child: Image.asset('assets/images/splash.png'),
                  ),
                  SizedBox(
                    width: SizeConfig.screenWidth! / 1.5,
                    height: getProportionateScreenHeight(66),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        foregroundColor: Colors.white,
                        backgroundColor: AppColor.kTextColor,
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, HomeScreen.routeName);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(18),
                              color: AppColor.kTextDarkColor,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Manrope',
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: AppColor.kIconColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
      width: currentPage == index ? 30 : 20,
      decoration: BoxDecoration(
        color: currentPage == index
            ? AppColor.kGreyColor
            : const Color(0xFFF8F9FB).withOpacity(0.3),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
