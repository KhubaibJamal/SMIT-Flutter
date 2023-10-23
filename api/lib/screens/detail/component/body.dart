import 'package:flutter/material.dart';

import '../../../models/user_model.dart';

class Body extends StatelessWidget {
  final UserModel userModel;
  const Body({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${userModel.id}"),
          Text("${userModel.name}"),
          Text("${userModel.email}"),
        ],
      ),
    );
  }
}
