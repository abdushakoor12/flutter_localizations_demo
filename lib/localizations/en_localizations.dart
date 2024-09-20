import 'package:flutter_localizations_demo/localizations/app_localizations.dart';

class EnglishLocalizations extends AppLocalizations {
  const EnglishLocalizations();
  @override
  String get appTitle => 'Counter App';

  @override
  String get increment => 'Increment';

  @override
  String youHavePushedTheButtonThisManyTimes(int times) {
    return 'You have pushed the button this many times: $times';
  }
}
