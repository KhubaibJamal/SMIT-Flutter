import 'package:flutter/material.dart';
import 'package:mini_project/model/product.dart';
import 'package:mini_project/size_config.dart';

import '../../../colors.dart';

// class ProductImage extends StatefulWidget {
//   final Product product;
//   const ProductImage({super.key, required this.product});

//   @override
//   State<ProductImage> createState() => _ProductImageState();
// }

// class _ProductImageState extends State<ProductImage> {
//   int selectedImage = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         padding: EdgeInsets.all(getProportionateScreenWidth(25)),
//         decoration: const BoxDecoration(
//           color: AppColor.kGreyColor,
//           shape: BoxShape.circle,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Expanded(
//               child: PageView.builder(
//                   onPageChanged: (value) {
//                     setState(() {
//                       selectedImage = value;
//                     });
//                   },
//                   itemCount: 3,
//                   itemBuilder: (context, index) {
//                     return Center(
//                       child: Image.asset(
//                         widget.product.images[selectedImage],
//                         color: AppColor.kIconColor,
//                         // scale: 0.75,
//                         fit: BoxFit.cover,
//                       ),
//                     );
//                   }),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 widget.product.images.length,
//                 (index) => buildImagePreview(index),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   GestureDetector buildImagePreview(int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedImage = index;
//         });
//       },
//       child: Container(
//         margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
//         padding: EdgeInsets.all(getProportionateScreenWidth(8)),
//         height: getProportionateScreenWidth(48),
//         width: getProportionateScreenWidth(48),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(
//             width: 2.0,
//             color: selectedImage == index
//                 ? AppColor.kPrimaryColor
//                 : Colors.transparent,
//           ),
//         ),
//         child: Image.asset(
//           widget.product.images[index],
//         ),
//       ),
//     );
//   }

//   AnimatedContainer buildDots({required int index}) {
//     return AnimatedContainer(
//       duration: kAnimationDuration,
//       margin: const EdgeInsets.only(right: 5),
//       height: 6,
//       width: 30,
//       decoration: BoxDecoration(
//         color: selectedImage == index
//             ? AppColor.kSecondaryColor
//             : const Color(0xFFE4E4E4),
//         borderRadius: BorderRadius.circular(3),
//       ),
//     );
//   }
// }

class ProductImage extends StatefulWidget {
  final Product product;
  const ProductImage({super.key, required this.product});

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.product.id.toString(),
              child: Image.asset(widget.product.images[selectedImage]),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => buildImagePreview(index),
            ),
          ],
        )
      ],
    );
  }

  GestureDetector buildImagePreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(getProportionateScreenWidth(8)),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2.0,
            color: selectedImage == index
                ? AppColor.kPrimaryColor
                : Colors.transparent,
          ),
        ),
        child: Image.asset(
          widget.product.images[index],
        ),
      ),
    );
  }
}
