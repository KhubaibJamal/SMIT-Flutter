import 'package:flutter/material.dart';
import 'package:mini_project/model/category_model.dart';
import 'package:mini_project/screen/products/product_screen.dart';

import '../../../colors.dart';
import '../../../size_config.dart';

class CategoryCardList extends StatelessWidget {
  const CategoryCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(15),
      ),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categoryCardList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
          childAspectRatio: getProportionateScreenWidth(0.85),
        ),
        itemBuilder: (context, index) {
          return CategoryCard(
            title: "${categoryCardList[index]["title"]}",
            subTitle: "${categoryCardList[index]["subTitle"]}",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductScreen(
                    title: "${categoryCardList[index]["title"]}",
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title, subTitle;
  final VoidCallback press;
  const CategoryCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        decoration: BoxDecoration(
          color: AppColor.kCartColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/item.png',
                scale: 0.75,
              ),
            ),
            const Divider(
              thickness: 1.5,
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            Text(
              title,
              style: TextStyle(
                color: AppColor.kTextDarkColor,
                fontSize: getProportionateScreenWidth(14),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              subTitle,
              style: const TextStyle(
                color: AppColor.kCartSubTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
