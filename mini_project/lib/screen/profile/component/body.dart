import 'package:flutter/material.dart';
import 'package:mini_project/screen/profile/component/profile_menu.dart';
import 'package:mini_project/screen/profile/component/profile_section.dart';
import 'package:mini_project/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight! * 0.04),
          // profile section
          const ProfileSection(),

          // profile menu
          SizedBox(height: getProportionateScreenWidth(40)),
          const ProfileMenu(),
        ],
      ),
    );
  }
}
