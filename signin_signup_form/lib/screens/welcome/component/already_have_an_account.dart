import 'package:flutter/material.dart';

import '../../../const.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account?", style: defaultTextStyle),
        GestureDetector(
          onTap: () {},
          child: Text(
            " Login",
            style: defaultTextStyle.copyWith(color: blackColor),
          ),
        ),
      ],
    );
  }
}
