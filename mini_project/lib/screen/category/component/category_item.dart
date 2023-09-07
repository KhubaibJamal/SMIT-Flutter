import 'package:flutter/material.dart';
import 'package:mini_project/screen/products/product_screen.dart';
import '../../../colors.dart';
import '../../../model/categoty_item.dart';
import '../../../size_config.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categoryItemList.length,
      itemBuilder: (context, index) {
        return CategoryItemBox(
          title: categoryItemList[index]['title']!,
          subTitle: categoryItemList[index]['subTitle']!,
          price: categoryItemList[index]['price']!,
          bgColor: Color(int.parse(categoryItemList[index]['color']!)),
        );
      },
    );
  }
}

class CategoryItemBox extends StatelessWidget {
  final String title, subTitle, price;
  final Color bgColor;
  const CategoryItemBox({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(10)),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductScreen(
                title: title,
              ),
            ),
          );
        },
        child: Row(
          children: [
            Container(
              height: SizeConfig.screenHeight! / 4,
              width: SizeConfig.screenWidth! / 2.5,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                "assets/images/item.png",
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 15),
            Container(
              padding: EdgeInsets.only(
                top: getProportionateScreenWidth(15),
                bottom: getProportionateScreenWidth(15),
              ),
              height: SizeConfig.screenHeight! / 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenWidth(10)),
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                      color: AppColor.kCartSubTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Starting from",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(15),
                      color: AppColor.kGreyLightColor,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenWidth(12)),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      color: AppColor.kPrimaryColor,
                      fontWeight: FontWeight.bold,
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
