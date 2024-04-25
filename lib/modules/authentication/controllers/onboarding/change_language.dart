import 'package:get/get.dart';

class ChangeLanguageController extends GetxController {

  Rx<String> locale = 'es'.obs;

  void changeLanguage(String language){
    print(language);
    locale.value = language;
  }
}