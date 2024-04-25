import 'package:get/get.dart';

class ChangeLanguageController extends GetxController {
  RxString locale = 'es'.obs;

  void changeLanguage(String language) {
    print(language);
    locale.value = language;
    update();
  }
}
