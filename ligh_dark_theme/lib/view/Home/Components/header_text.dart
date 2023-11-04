import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Hello Jennifer",
            style: Theme.of(context).textTheme.headlineMedium),
        const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('assets/images/jennifer.jpg'),
        ),
      ],
    );
  }
}
