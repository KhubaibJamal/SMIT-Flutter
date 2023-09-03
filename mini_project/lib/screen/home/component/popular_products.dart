import 'package:flutter/material.dart';
import 'package:mini_project/colors.dart';
import 'package:mini_project/size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommended",
          style: TextStyle(
            color: AppColor.kTextDarkColor,
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              5,
              (index) => const PopularCard(),
            ),
          ),
        ),
      ],
    );
  }
}

class PopularCard extends StatelessWidget {
  const PopularCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getProportionateScreenWidth(20)),
      child: Container(
        width: SizeConfig.screenWidth! / 2.5,
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        decoration: BoxDecoration(
          color: AppColor.kCartColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/images/item.png')),
            const Divider(
              color: Color(0xFFE0E2EE),
              thickness: 2.0,
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            Text(
              "Fresh Lemon",
              style: TextStyle(
                color: AppColor.kTextDarkColor,
                fontSize: getProportionateScreenWidth(14),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Organic",
              style: TextStyle(
                color: AppColor.kCartSubTextColor,
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(15)),
            Container(
              height: 30,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 2,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  const Text(
                    "Unit ",
                    style: TextStyle(
                      color: AppColor.kGreyLightColor,
                    ),
                  ),
                  const Text(
                    "\$12",
                    style: TextStyle(
                      color: AppColor.kCartSubTextColor,
                    ),
                  ),
                  const Spacer(),
                  Container(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
