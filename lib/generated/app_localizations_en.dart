import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'My App';

  @override
  String get content => 'Hello';

  @override
  String onboarding(String name) {
    String _temp0 = intl.Intl.selectLogic(
      name,
      {
        'onBoardingTitle1': 'Choose your product',
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
        'textLogin': 'This is an example of changing language',
        'buttonLogin': 'Change language',
        'other': '',
      },
    );
    return '$_temp0';
  }
}
