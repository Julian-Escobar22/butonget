import 'package:app_mobile/generated/app_localizations.dart';
import 'package:app_mobile/modules/authentication/controllers/onboarding/change_language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ChangeLanguageController changeLanguageController =
        Get.put(ChangeLanguageController());

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).appTitle),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context).loginText('textLogin'),
              style: TextStyle(fontSize: 18.0),
            ),
            ElevatedButton(
              onPressed: () {
                changeLanguageController.changeLanguage(
                  changeLanguageController.locale.value == 'es' ? 'en' : 'es',
                );
              },
              child: Text(
                AppLocalizations.of(context).loginText('buttonLogin'),
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
