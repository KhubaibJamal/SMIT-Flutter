import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../constant.dart';
import '../../../model/cart.dart';

class CartItems extends StatefulWidget {
  const CartItems({
    super.key,
  });

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          double price = cart[index]["price"];
          return ListTile(
            // product image
            leading: SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Image.asset(
                  "${cart[index]["image"]}",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // product title
            title: Text(
              "${cart[index]["title"]}",
              style: subHeadingStyle.copyWith(
                color: AppColor.kTextDarkColor,
                fontWeight: FontWeight.bold,
              ),
            ),

            // product price
            subtitle: Text(
              "\$$price",
              style: subHeadingStyle.copyWith(
                color: AppColor.kCartSubTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // remove icon
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (cart[index]["itemCount"] > 0) {
                        cart[index]["itemCount"]--;
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.remove_circle,
                    size: 30,
                    color: AppColor.kCartColor,
                  ),
                ),
                Text(
                  cart[index]["itemCount"].toString(),
                  style: subHeadingStyle.copyWith(
                    color: AppColor.kTextDarkColor,
                  ),
                ),
                // add item icon
                IconButton(
                  onPressed: () {
                    setState(() {
                      cart[index]["itemCount"] += 1;

                      price = cart[index]["price"] * cart[index]["itemCount"];
                    });
                    print(price);
                    // updateTotalPrice(index, cart[index]['itemCount'], true);
                  },
                  icon: const Icon(
                    Icons.add_circle,
                    size: 30,
                    color: AppColor.kCartColor,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
