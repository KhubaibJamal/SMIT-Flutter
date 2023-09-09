import 'package:flutter/material.dart';
import 'package:mini_project/screen/details/component/body.dart';

import '../../component/Custom_app_bar.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/detail";
  final String title, price, subTitle;

  const DetailScreen({
    super.key,
    required this.title,
    required this.price,
    required this.subTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(title: title),
      ),
      body: Body(title: title, price: price, subTitle: subTitle),
    );
  }
}
