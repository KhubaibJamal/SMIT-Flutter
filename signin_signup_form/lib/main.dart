import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:signin_signup_form/route.dart';
import 'package:signin_signup_form/screens/welcome/welcome_screen.dart';
import 'package:signin_signup_form/theme.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Authentication',
      theme: theme(),
      initialRoute: WelcomeScreen.routeName,
      routes: route,
    );
  }
}
