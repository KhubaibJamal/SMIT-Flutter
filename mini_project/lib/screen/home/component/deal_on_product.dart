import 'package:flutter/material.dart';
import 'package:mini_project/model/deal_model.dart';

import '../../../colors.dart';
import '../../../size_config.dart';

class DealOnProducts extends StatelessWidget {
  const DealOnProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Deals on Fruits & Tea",
          style: TextStyle(
            color: AppColor.kTextDarkColor,
            fontSize: getProportionateScreenWidth(20),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          itemCount: dealDemo.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return DealCart(
              price: dealDemo[index]["price"],
              name: dealDemo[index]["name"],
            );
          },
        ),
      ],
    );
  }
}

class DealCart extends StatelessWidget {
  final String? price, name;
  const DealCart({
    super.key,
    required this.price,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: SizeConfig.screenWidth! / 2.5,
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      decoration: BoxDecoration(
        color: AppColor.kCartColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                child: Image.asset('assets/images/item.png'),
              ),
              Positioned(
                bottom: -10,
                right: -10,
                child: Container(
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
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenWidth(25)),
          Text(
            price!,
            style: TextStyle(
              color: AppColor.kTextDarkColor,
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name!,
            softWrap: true,
            overflow: TextOverflow.clip,
            style: const TextStyle(
              color: AppColor.kCartSubTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
