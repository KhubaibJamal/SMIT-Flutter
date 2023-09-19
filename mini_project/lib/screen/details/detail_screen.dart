import 'package:flutter/material.dart';
import 'package:mini_project/model/product.dart';
import 'package:mini_project/screen/details/component/body.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/detail";

  const DetailScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final ProductsDetailsArguments args =
        ModalRoute.of(context)!.settings.arguments as ProductsDetailsArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.product.title),
      ),
      body: Body(product: args.product),
    );
  }
}

class ProductsDetailsArguments {
  final Product product;

  ProductsDetailsArguments({required this.product});
}
