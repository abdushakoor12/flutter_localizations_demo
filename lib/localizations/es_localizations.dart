import 'package:flutter_localizations_demo/localizations/app_localizations.dart';

class SpanishLocalizations extends AppLocalizations {
  const SpanishLocalizations();
  @override
  String get appTitle => 'Aplicación Contador';

  @override
  String get increment => 'Incrementar';

  @override
  String youHavePushedTheButtonThisManyTimes(int times) {
    return 'Has pulsado el botón esta cantidad de veces: $times';
  }
}
