import 'package:flutter/material.dart';
import 'package:ligh_dark_theme/size_config.dart';

import 'Components/animated_progress_bar.dart';
import 'Components/header_text.dart';
import 'Components/popular_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: SizeConfig.screenHeight!,
          width: SizeConfig.screenWidth!,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).secondaryHeaderColor,
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(getProportionateScreenWidth(18)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // header text and profile image
                  const HeaderText(),

                  // animated progress bar indicator
                  SizedBox(height: getProportionateScreenWidth(30)),
                  const AnimatedProgressBar(),

                  // popular product card
                  SizedBox(height: getProportionateScreenWidth(30)),
                  const PopularCard(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
