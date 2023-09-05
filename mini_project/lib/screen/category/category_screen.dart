import 'package:flutter/material.dart';

import '../../component/cart_icon_button.dart';
import '../../component/header_text.dart';

class CategoryScreen extends StatelessWidget {
  static String routeName = "/category";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            HeaderText(),
            Spacer(),
            CartIconButton(),
          ],
        ),
      ),
    );
  }
}
