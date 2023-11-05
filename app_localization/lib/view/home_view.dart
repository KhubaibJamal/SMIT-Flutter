import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum language { english, spanish, urdu }

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.helloWorld),
        actions: [
          PopupMenuButton(
            onSelected: (value) {},
            itemBuilder: (context) {
              return const [
                PopupMenuItem(value: language.english, child: Text("English")),
                PopupMenuItem(value: language.spanish, child: Text("Spanish")),
                PopupMenuItem(value: language.urdu, child: Text("Udru")),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
