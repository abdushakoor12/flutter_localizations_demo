import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations_demo/localizations/en_localizations.dart';
import 'package:flutter_localizations_demo/localizations/es_localizations.dart';
import 'package:flutter_localizations_demo/localizations/fr_localizations.dart';

abstract class AppLocalizations {
  const AppLocalizations();

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationDelegate();

  String get appTitle;

  String get increment;

  String youHavePushedTheButtonThisManyTimes(int times);
}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) {
    return localeToLocalizations.keys.map((e) => e.languageCode).contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return SynchronousFuture<AppLocalizations>(localeToLocalizations[locale]!);
  }

  @override
  bool shouldReload(_AppLocalizationDelegate old) => false;
}

Map<Locale, AppLocalizations> localeToLocalizations = {
  const Locale('en'): const EnglishLocalizations(),
  const Locale('es'): const SpanishLocalizations(),
  const Locale('fr'): const FrenchLocalizations(),
};

extension AppLocalizationExtensions on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}