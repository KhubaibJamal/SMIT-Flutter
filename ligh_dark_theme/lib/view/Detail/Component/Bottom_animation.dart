import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class BottomAnimation extends StatelessWidget {
  const BottomAnimation({
    super.key,
    required this.title,
    required this.startAngle,
    required this.valueNotifier,
  });
  final String title;
  final double startAngle;
  final double valueNotifier;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(250),
        ),
      ),
      child: Stack(
        children: [
          SimpleCircularProgressBar(
            size: 90,
            maxValue: 500,
            startAngle: startAngle,
            progressStrokeWidth: 6,
            backStrokeWidth: 4,
            backColor: Theme.of(context).dividerColor,
            progressColors: [
              Theme.of(context).primaryColorDark,
              Theme.of(context).primaryColorLight,
            ],
            animationDuration: 2,
            valueNotifier: ValueNotifier(valueNotifier),
            onGetText: (double value) {
              return Text('${(value).toInt()}',
                  style: Theme.of(context).textTheme.headlineSmall);
            },
          ),
          Positioned(
            top: 15,
            left: 32,
            child: Text(title, style: Theme.of(context).textTheme.titleSmall),
          ),
        ],
      ),
    );
  }
}
