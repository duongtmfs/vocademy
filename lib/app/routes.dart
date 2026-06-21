import 'package:flutter/material.dart';
import '../features/language_picker/language_picker_screen.dart';
import '../features/splash/splash_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const SplashScreen(),
  '/language-picker': (context) => const LanguagePickerScreen(),
  '/learning': (context) => const Placeholder(),
  // TODO: Add more routes
};
