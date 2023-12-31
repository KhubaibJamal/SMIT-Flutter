import 'package:app_localization/helper/helper.dart';
import 'package:app_localization/provider/language_provider.dart';
import 'package:app_localization/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final String languageCode = await Helper.getLanguageCode() ?? " ";

  runApp(MyApp(locale: languageCode));
}

class MyApp extends StatelessWidget {
  final String locale;
  const MyApp({super.key, required this.locale});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageChangeProvider()),
      ],
      child: Consumer<LanguageChangeProvider>(
        builder: (context, provider, child) {
          if (provider.appLocale == null) {
            if (locale.isEmpty) {
              provider.changeLanguage(const Locale('en'));
            } else {
              provider.changeLanguage(Locale(locale));
            }
          }
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            locale: locale == ''
                ? const Locale('en')
                : provider.appLocale == null
                    ? Locale(locale)
                    : Provider.of<LanguageChangeProvider>(context).appLocale,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en'), // English
              Locale('es'), // Spanish
              Locale('ur'), // urdu
              Locale('de') // german
            ],
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              // useMaterial3: true,
            ),
            home: const HomeView(),
          );
        },
      ),
    );
  }
}
