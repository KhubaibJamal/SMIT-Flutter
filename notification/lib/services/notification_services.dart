import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:notification/main.dart';
import 'package:notification/view/notification_view.dart';

// handle background message
// its a top level function not a class method which required initialization
Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print("Title: ${message.notification?.title}");
  print("Body: ${message.notification?.body}");
  print("Payload: ${message.data}");
}

class NotificationService {
  // firebase message instance
  final firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initFirebaseNotification() async {
    // get permission
    await firebaseMessaging.requestPermission();
    // get device token
    String? fCMToken = await firebaseMessaging.getToken();
    print("Device Token: $fCMToken");
    initPushNotification();
  }

  // navigate to notification screen
  void handleMessage(RemoteMessage? message) {
    if (message == null) return;
    navigatorKey.currentState?.pushNamed(
      NotificationView.route,
      arguments: message,
    );
  }

  Future initPushNotification() async {
    // IOS foreground notification
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    // when app is open from notification and execute handleMessage method
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    // execute handleMessage method when app is open from notification
    // app is in background
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    // background message from firebase
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }
}
