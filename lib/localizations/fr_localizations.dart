import 'package:flutter_localizations_demo/localizations/app_localizations.dart';

class FrenchLocalizations extends AppLocalizations {
  const FrenchLocalizations();
  @override
  String get appTitle => 'Application Compteur';

  @override
  String get increment => 'Incrémenter';

  @override
  String youHavePushedTheButtonThisManyTimes(int times) {
    return 'Vous avez appuyé sur le bouton cette quantité de fois: $times';
  }
}
