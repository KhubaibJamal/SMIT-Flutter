import 'package:api/models/user_model.dart';
import 'package:api/screens/detail/component/body.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/detail";

  const DetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final UserDetailsArguments args =
        ModalRoute.of(context)!.settings.arguments as UserDetailsArguments;
    return Scaffold(
      appBar: AppBar(),
      body: Body(userModel: args.userModel),
    );
  }
}

class UserDetailsArguments {
  final UserModel userModel;
  UserDetailsArguments({required this.userModel});
}
