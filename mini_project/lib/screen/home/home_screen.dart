import 'package:flutter/material.dart';
import 'package:mini_project/component/custom_navigation_bar.dart';
import 'package:mini_project/screen/home/component/body.dart';

import '../../component/cart_icon_button.dart';
import '../../component/header_text.dart';
import '../../enum.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            HeaderText(),
            Spacer(),
            CartIconButton(),
          ],
        ),
      ),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
