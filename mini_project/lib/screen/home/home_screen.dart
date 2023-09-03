import 'package:flutter/material.dart';
import 'package:mini_project/screen/home/component/body.dart';

import '../../component/cart_icon_button.dart';
import '../../component/header_text.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

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
      body: const Body(),
    );
  }
}
