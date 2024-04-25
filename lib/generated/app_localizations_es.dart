import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Mi Aplicación';

  @override
  String get content => 'Hola';

  @override
  String onboarding(String name) {
    String _temp0 = intl.Intl.selectLogic(
      name,
      {
        'onBoardingTitle1': 'Elija su producto',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String loginText(String name) {
    String _temp0 = intl.Intl.selectLogic(
      name,
      {
        'textLogin': 'Este es un ejemplo de cambiar idioma',
        'buttonLogin': 'Cambiar idioma',
        'other': '',
      },
    );
    return '$_temp0';
  }
}
