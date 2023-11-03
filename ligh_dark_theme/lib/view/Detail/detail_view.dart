import 'package:flutter/material.dart';
import 'package:ligh_dark_theme/size_config.dart';

import '../../constant.dart';
import 'Component/Bottom_animation.dart';
import 'Component/product_description.dart';
import 'Component/detail_header.dart';
import 'Component/row_widget_text.dart';

class DetailView extends StatelessWidget {
  final image, text;
  const DetailView({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: SizeConfig.screenHeight!,
          width: SizeConfig.screenWidth!,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: bgColorList,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(getProportionateScreenWidth(10)),
            child: Column(
              children: [
                // detail screen image and arrow back icon
                DetailHeader(
                  image: image,
                ),
                const RowWidgetText(),

                // product description
                SizedBox(height: getProportionateScreenWidth(18)),
                ProductDescription(title: text),

                // animated circular progress bar
                SizedBox(height: getProportionateScreenWidth(30)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomAnimation(
                      title: "CAL",
                      startAngle: 150,
                      valueNotifier: 300,
                    ),
                    BottomAnimation(
                      title: "FAT",
                      startAngle: 260,
                      valueNotifier: 140,
                    ),
                    BottomAnimation(
                      title: "CAR",
                      startAngle: 120,
                      valueNotifier: 340,
                    ),
                  ],
                ),

                // add to card button
                const Spacer(),
                Container(
                  height: getProportionateScreenWidth(60),
                  width: SizeConfig.screenWidth! * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(15.0),
                    gradient: LinearGradient(
                      colors: primaryColorList,
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "\$4.99/ Add to card",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
