import 'package:flutter/material.dart';
import 'package:ligh_dark_theme/size_config.dart';
import 'package:ligh_dark_theme/view/Home/Components/progress_bar_icon.dart';

import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class AnimatedProgressBar extends StatelessWidget {
  const AnimatedProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(250),
            ),
          ),
          child: Stack(
            children: [
              SimpleCircularProgressBar(
                size: 250,
                maxValue: 1000,
                backStrokeWidth: 4,
                backColor: Theme.of(context).dividerColor,
                progressColors: [
                  Theme.of(context).primaryColorDark,
                  Theme.of(context).primaryColorLight,
                ],
                animationDuration: 2,
                valueNotifier: ValueNotifier(617),
                onGetText: (double value) {
                  return Text('${(value).toInt()}',
                      style: Theme.of(context).textTheme.headlineSmall);
                },
              ),
              // const ProgressBarIcon(),
              const CustomSwitch(),
              Positioned(
                top: 150,
                left: 75,
                child: Text("REMAINING",
                    style: Theme.of(context).textTheme.titleMedium),
              ),
            ],
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(60)),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextWidget(
              title: "1383",
              subTitle: "CONSUMED",
            ),
            TextWidget(
              title: "471",
              subTitle: "BURNED",
            ),
            TextWidget(
              title: "912",
              subTitle: "NET",
            ),
          ],
        ),
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const TextWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall),
        SizedBox(height: getProportionateScreenWidth(10)),
        Text(subTitle, style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}
