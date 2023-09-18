import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_project/constant.dart';
import 'package:mini_project/size_config.dart';

import '../../../colors.dart';

List<Map<String, String>> profileItemList = [
  {"text": "Setting", "icon": "assets/icons/setting.svg"},
  {"text": "Notification", "icon": "assets/icons/notification.svg"},
  {"text": "Language", "icon": "assets/icons/language.svg"},
  {"text": "Location", "icon": "assets/icons/location.svg"},
  {"text": "Messages", "icon": "assets/icons/messages.svg"},
  {"text": "Log Out", "icon": "assets/icons/logout.svg"},
];

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(profileItemList.length, (index) {
        return ProfileMenuItem(
          text: "${profileItemList[index]['text']}",
          icon: "${profileItemList[index]['icon']}",
        );
      }),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final String icon, text;
  const ProfileMenuItem({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 20,
            color: AppColor.kCartColor,
          )
        ],
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          icon,
          colorFilter: const ColorFilter.mode(
            AppColor.kIconColor,
            BlendMode.srcIn,
          ),
        ),
        title: Text(
          text,
          style: subHeadingStyle.copyWith(color: Colors.black),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
          size: 20,
        ),
      ),
    );
  }
}
