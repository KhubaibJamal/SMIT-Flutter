import 'package:flutter/material.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: "image",
          child: Image(
            image: AssetImage(image),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.navigate_before,
            color: Colors.amber,
            size: 45,
          ),
        ),
      ],
    );
  }
}
