import 'package:flutter/material.dart';
import 'package:notification/services/notification_services.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  NotificationServices services = NotificationServices();

  @override
  void initState() {
    services.requestPermissionNotification();
    services.firebaseInit();
    services.isTokenRefresh();
    services.getDeviceToken().then((value) {
      print("Value: $value");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Notification"),
            ),
          ],
        ),
      ),
    );
  }
}
