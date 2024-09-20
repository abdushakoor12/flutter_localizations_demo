### Adding a new language

To add a new language, make a class that extends `AppLocalizations`, override the getters and add it to the `localeToLocalizations` map in `app_localizations.dart`.
```dart
class ItalianLocalizations extends AppLocalizations {
  /// Italian translations
}
```
