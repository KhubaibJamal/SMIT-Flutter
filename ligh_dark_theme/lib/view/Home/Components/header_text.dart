import 'package:flutter/material.dart';

import '../../../constant.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Hello Jennifer",
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('assets/images/jennifer.jpg'),
        ),
      ],
    );
  }
}
