import 'package:flutter/material.dart';
import 'package:mini_project/screen/products/component/body.dart';

import 'component/product_app_bar.dart';

class ProductScreen extends StatelessWidget {
  static String routeName = "/product";
  final String title;

  const ProductScreen({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: ProductScreenAppBar(title: title),
      ),
      body: const Body(),
    );
  }
}
