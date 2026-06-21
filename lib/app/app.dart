import 'package:flutter/material.dart';

import '../generated/l10n/app_localizations.dart';
import 'routes.dart';

class VocademyApp extends StatelessWidget {
  const VocademyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vocademy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        fontFamily: 'SFProRounded',
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale == null) {
          return const Locale('vi');
        }

        for (final supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode) {
            return supportedLocale;
          }
        }

        return const Locale('vi');
      },
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
