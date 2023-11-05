import 'package:app_localization/provider/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

enum Language { english, spanish, urdu, german }

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppLocalizations.of(context)!.helloWorld),
        actions: [
          Consumer<LanguageChangeProvider>(
            builder: (context, provider, child) {
              return PopupMenuButton(
                onSelected: (Language item) {
                  if (Language.english.name == item.name) {
                    provider.changeLanguage(const Locale('en'));
                  } else if (Language.spanish.name == item.name) {
                    provider.changeLanguage(const Locale('es'));
                  } else if (Language.urdu.name == item.name) {
                    provider.changeLanguage(const Locale('ur'));
                  } else {
                    provider.changeLanguage(const Locale('de'));
                  }
                },
                itemBuilder: (context) {
                  return const [
                    PopupMenuItem(
                        value: Language.english, child: Text("English")),
                    PopupMenuItem(
                        value: Language.spanish, child: Text("Spanish")),
                    PopupMenuItem(value: Language.urdu, child: Text("Udru")),
                    PopupMenuItem(
                        value: Language.german, child: Text("German")),
                  ];
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
