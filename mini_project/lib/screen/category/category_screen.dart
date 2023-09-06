import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_project/screen/category/component/body.dart';
import 'package:mini_project/size_config.dart';

import '../../component/cart_icon_button.dart';
import '../../component/custom_navigation_bar.dart';
import '../../component/header_text.dart';
import '../../enum.dart';

class CategoryScreen extends StatelessWidget {
  static String routeName = "/category";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const HeaderText(),
            const Spacer(),
            SvgPicture.asset('assets/icons/Search.svg'),
            SizedBox(width: getProportionateScreenWidth(25)),
            const CartIconButton(),
          ],
        ),
      ),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.category),
    );
  }
}
