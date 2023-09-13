// import 'package:flutter/material.dart';

// import '../colors.dart';
// import '../size_config.dart';

// class CustomProductCard extends StatelessWidget {
//   final String? name, price, subTitle;
//   const CustomProductCard({
//     super.key,
//     required this.name,
//     required this.price,
//     required this.subTitle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(getProportionateScreenWidth(20)),
//       decoration: BoxDecoration(
//         color: AppColor.kCartColor.withOpacity(0.5),
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Stack(
//             clipBehavior: Clip.none,
//             children: [
//               Center(
//                 child: Image.asset(
//                   'assets/images/item.png',
//                   scale: 0.75,
//                 ),
//               ),
//               Positioned(
//                 bottom: -10,
//                 right: -10,
//                 child: Container(
//                   height: 30,
//                   width: 30,
//                   decoration: const BoxDecoration(
//                     color: AppColor.kPrimaryColor,
//                     shape: BoxShape.circle,
//                   ),
//                   child: const Icon(
//                     Icons.add,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: getProportionateScreenWidth(25)),
//           Text(
//             name!,
//             style: TextStyle(
//               color: AppColor.kTextDarkColor,
//               fontSize: getProportionateScreenWidth(14),
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             price!,
//             style: TextStyle(
//               color: AppColor.kTextDarkColor,
//               fontSize: getProportionateScreenWidth(14),
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             subTitle!,
//             softWrap: true,
//             overflow: TextOverflow.clip,
//             style: const TextStyle(
//               color: AppColor.kCartSubTextColor,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../colors.dart';
import '../model/product.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.aspectRation = 1.02,
    required this.product,
    required this.press,
  });

  final double aspectRation;
  final Product product;
  final GestureTapCallback press;

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: aspectRation,
              child: Hero(
                tag: product.id.toString,
                child: Image.asset(product.images[0]),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              product.title,
              maxLines: 2,
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.price.toString(),
                  style: TextStyle(
                    color: AppColor.kTextDarkColor,
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {},
                  child: Container(
                    height: getProportionateScreenWidth(28),
                    width: getProportionateScreenWidth(28),
                    padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                    decoration: BoxDecoration(
                      color: product.isFavorite
                          ? AppColor.kPrimaryColor.withOpacity(0.15)
                          : AppColor.kSecondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/Heart Icon_2.svg",
                      colorFilter: ColorFilter.mode(
                        product.isFavorite
                            ? const Color(0xFFFF4848)
                            : const Color(0xFFDBDEE4),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
