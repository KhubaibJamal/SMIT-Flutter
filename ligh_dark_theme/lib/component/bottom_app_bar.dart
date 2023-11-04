import 'package:flutter/material.dart';

import '../constant.dart';
import 'widget_screen.dart';
import '../view/Home/home_view.dart';

class BottomNavigationAppBar extends StatefulWidget {
  const BottomNavigationAppBar({super.key});

  @override
  State<BottomNavigationAppBar> createState() => _BottomNavigationAppBarState();
}

class _BottomNavigationAppBarState extends State<BottomNavigationAppBar> {
  int currentTab = 0;
  final List screens = [
    const HomeView(),
    const WidgetScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Theme.of(context).bottomAppBarTheme.color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentScreen = const HomeView();
                  currentTab = 0;
                });
              },
              child: Icon(
                Icons.home_filled,
                color: currentTab == 0
                    ? Theme.of(context).iconTheme.color
                    : unSelectedIconColor,
                size: 30,
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  // currentScreen = const WidgetScreen();
                  currentTab = 1;
                });
              },
              child: Icon(
                Icons.widgets,
                color: currentTab == 1
                    ? Theme.of(context).iconTheme.color
                    : unSelectedIconColor,
                size: 30,
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  // currentScreen = const WidgetScreen();
                  currentTab = 2;
                });
              },
              child: Icon(
                Icons.bolt,
                color: currentTab == 2
                    ? Theme.of(context).iconTheme.color
                    : unSelectedIconColor,
                size: 30,
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  // currentScreen = const WidgetScreen();
                  currentTab = 3;
                });
              },
              child: Icon(
                Icons.shopping_bag,
                color: currentTab == 3
                    ? Theme.of(context).iconTheme.color
                    : unSelectedIconColor,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
