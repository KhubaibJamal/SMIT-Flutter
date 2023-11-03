import 'package:flutter/material.dart';
import 'package:ligh_dark_theme/size_config.dart';

import '../../../constant.dart';
import '../../Detail/detail_view.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          color: Color(0xff313a48),
        ),
        SizedBox(height: getProportionateScreenWidth(15)),
        Text(
          "Popular",
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Colors.white,
              ),
        ),
        SizedBox(height: getProportionateScreenWidth(18)),
        const CardData(
          image: "assets/images/chicken.png",
          text: "Chicken & spring green bun cha",
        ),
      ],
    );
  }
}

class CardData extends StatelessWidget {
  const CardData({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailView(image: image, text: text),
          ),
        );
      },
      child: Container(
        height: SizeConfig.screenHeight! * 0.25,
        width: SizeConfig.screenWidth!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            colors: bgColorList,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: "image",
              child: Image.asset(
                image,
                scale: 2.5,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
