import 'package:api/services/user_services.dart';
import 'package:api/size_config.dart';
import 'package:flutter/material.dart';

import '../../../models/user_model.dart';

class Body extends StatelessWidget {
  const Body({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: Services.getData(),
        builder: (context, AsyncSnapshot<List<UserModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      "${snapshot.data![index].id}",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(20),
                      ),
                    ),
                  ),
                  title: Text(
                    "${snapshot.data![index].name}",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "${snapshot.data![index].email}",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text("Error"));
          } else {
            return const Center(child: Text("No Data Found"));
          }
        },
      ),
    );
  }
}
