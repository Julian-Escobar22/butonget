import 'package:app_mobile/generated/app_localizations.dart';
import 'package:app_mobile/modules/authentication/controllers/onboarding/change_language.dart';
import 'package:app_mobile/modules/authentication/screens/onboarding/onboarding.dart';
import 'package:app_mobile/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ChangeLanguageController changeLanguageController =
        Get.put(ChangeLanguageController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const OnBoardingScreen(),
      // Config l10n
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('es'),
        Locale('en'),
      ],
      locale: changeLanguageController.locale.value == 'es'
          ? const Locale('en')
          : const Locale('es'),
    );
  }
}
