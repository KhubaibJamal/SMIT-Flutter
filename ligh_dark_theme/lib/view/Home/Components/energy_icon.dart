import 'package:flutter/material.dart';

class EnergyIcon extends StatelessWidget {
  const EnergyIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 43,
      left: 96,
      child: Image.asset(
        "assets/images/energy.png",
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}
