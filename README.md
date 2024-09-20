### Adding a new language

To add a new language, make a class that extends `AppLocalizations`, override the getters and add it to the `localeToLocalizations` map in `app_localizations.dart`.
```dart
class ItalianLocalizations extends AppLocalizations {
  /// Italian translations
}
```

and then
```dart
Map<Locale, AppLocalizations> localeToLocalizations = {
  const Locale('en'): const EnglishLocalizations(),
  const Locale('es'): const SpanishLocalizations(),
  const Locale('fr'): const FrenchLocalizations(),
  /// add your new language here
  const Locale('it'): const ItalianLocalizations(),
};
