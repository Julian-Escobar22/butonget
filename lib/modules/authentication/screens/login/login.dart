import 'package:app_mobile/generated/app_localizations.dart';
import 'package:app_mobile/modules/authentication/controllers/onboarding/change_language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final ChangeLanguageController changeLanguageController = Get.put(ChangeLanguageController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(AppLocalizations.of(context).loginText('textLogin')),
            // Text(AppText.textLogin),
            // Obx(() => Text(changeLanguageController.locale.value == 'es' ? AppText.textLogin : AppText.textLogin)),
            ElevatedButton(
              onPressed: () {
                changeLanguageController.changeLanguage(
                  changeLanguageController.locale.value == 'es' ? 'en' : 'es',
                );
              }, 
              child: Text(AppLocalizations.of(context).loginText('buttonLogin')))
          ],
        )
        //Text('Este es un ejemplo de cambiar idioma'),
      ),
    );
  }
}
