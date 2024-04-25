import 'package:app_mobile/generated/app_localizations.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

class AppText {
  AppText._();

  // Global texts

  // OnBoarding texts
  // static const String onBoardingTitle1 = "Elija su producto";
  static String onBoardingTitle1 =
      AppLocalizations.of(Get.context!).onboarding('onBoardingTitle1');
  static String textLogin =
      AppLocalizations.of(Get.context!).loginText('textLogin');
  static String buttonLogin =
      AppLocalizations.of(Get.context!).loginText('buttonLogin');
  static const String onBoardingTitle2 = "Seleccione el método de pago";
  static const String onBoardingTitle3 = "Entrega a domicilio";

  static const String onBoardingSubTitle1 =
      "Bienvenido a un mundo de opciones ilimitadas: ¡su producto perfecto le espera!";
  static const String onBoardingSubTitle2 =
      "Para realizar transacciones sin problemas, elija su forma de pago.";
  static const String onBoardingSubTitle3 =
      "¡Entrega rápida, segura y sin contacto!";
}
