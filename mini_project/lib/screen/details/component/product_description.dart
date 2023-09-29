import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mini_project/model/product.dart';

import '../../../colors.dart';
import '../../../constant.dart';
import '../../../model/cart.dart';
import '../../../size_config.dart';
import 'detail_screen_btn.dart';

class ProductDescription extends StatelessWidget {
  final Product product;
  const ProductDescription({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: headingStyle.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${product.price}/KG",
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
          SizedBox(height: getProportionateScreenWidth(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RatingBar.builder(
                itemSize: 24.0,
                initialRating: product.rating,
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
          SizedBox(height: getProportionateScreenWidth(15)),
          Text(
            "Details",
            style: homeDeliveryTextStyle.copyWith(
              color: AppColor.kTextDarkColor,
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(10)),
          Text(
            product.description,
            maxLines: 2,
            style: subHeadingStyle.copyWith(
              color: AppColor.kGreyLightColor,
            ),
          ),

          // button
          SizedBox(height: getProportionateScreenWidth(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: SizeConfig.screenWidth! / 3,
                height: getProportionateScreenHeight(66),
                child: DetailScreenBtn(
                  text: "Add To Cart",
                  bgColor: Colors.white,
                  textColor: AppColor.kPrimaryColor,
                  press: () {
                    if (product.images.isNotEmpty) {
                      cart.add({
                        "title": product.title,
                        "price": product.price,
                        "image": product.images[0],
                        "itemCount": 1,
                      });
                    }
                    final snackBar = SnackBar(
                      duration: const Duration(milliseconds: 300),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                      backgroundColor: AppColor.kPrimaryColor,
                      content: Text(
                        '${product.title} product is in the cart!',
                        style: subHeadingStyle.copyWith(
                            color: AppColor.kTextColor),
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
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
          SizedBox(height: getProportionateScreenWidth(10)),
        ],
      ),
    );
  }
}
