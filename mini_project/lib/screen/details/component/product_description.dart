import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../colors.dart';
import '../../../constant.dart';
import '../../../size_config.dart';
import 'detail_screen_btn.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.title,
    required this.price,
  });

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: headingStyle.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$price/KG",
              style: subHeadingStyle.copyWith(
                color: AppColor.kPrimaryColor,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: AppColor.kPrimaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                "\$22.0.4 OFF",
                style: subHeadingStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "\$56.70 USD",
              style: subHeadingStyle,
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenWidth(25)),
        Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RatingBar.builder(
              itemSize: 24.0,
              initialRating: 3.5,
              minRating: 1,
              allowHalfRating: true,
              itemCount: 5,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
            // const SizedBox(width: 5),
            Text(
              "110 Reviews",
              style: subHeadingStyle,
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        Text(
          "Details",
          style: homeDeliveryTextStyle.copyWith(
            color: AppColor.kTextDarkColor,
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        Text(
          "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
          style: subHeadingStyle.copyWith(
            color: AppColor.kGreyLightColor,
          ),
        ),

        // button
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: SizeConfig.screenWidth! / 3,
              height: getProportionateScreenHeight(66),
              child: DetailScreenBtn(
                text: "Add To Cart",
                bgColor: Colors.white,
                textColor: AppColor.kPrimaryColor,
                press: () {},
              ),
            ),
            SizedBox(
              width: SizeConfig.screenWidth! / 2.5,
              height: getProportionateScreenHeight(66),
              child: DetailScreenBtn(
                text: "Buy Now",
                bgColor: AppColor.kPrimaryColor,
                textColor: Colors.white,
                press: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
