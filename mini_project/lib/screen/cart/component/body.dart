import 'package:flutter/material.dart';
import 'package:mini_project/colors.dart';
import 'package:mini_project/constant.dart';

import '../../../model/cart.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: ListView.builder(
            itemCount: cart.length,
            itemBuilder: (context, index) {
              // print(cart[index]["image"]);
              return Row(
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Image.asset(
                        "${cart[index]["image"]}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${cart[index]["title"]}",
                        style: subHeadingStyle.copyWith(
                          color: AppColor.kTextDarkColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "\$${cart[index]["price"]}",
                            style: subHeadingStyle.copyWith(
                              color: AppColor.kTextDarkColor,
                            ),
                          ),
                          // Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_circle),
                          ),
                          Text(
                            "1",
                            style: subHeadingStyle.copyWith(
                              color: AppColor.kTextDarkColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add_circle),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        ),
        Expanded(
          child: Container(color: Colors.yellow),
        ),
      ],
    );
  }
}
