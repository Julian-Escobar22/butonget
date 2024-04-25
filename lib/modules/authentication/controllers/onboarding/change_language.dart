import 'package:get/get.dart';

class ChangeLanguageController extends GetxController {
  RxString locale = 'es'.obs;

  void changeLanguage(String language) {
    print(
        language); // Verificar si se imprime el idioma seleccionado en la consola
    locale.value = language;
    update(); // Notificar a los observadores sobre el cambio de idioma
  }
}
