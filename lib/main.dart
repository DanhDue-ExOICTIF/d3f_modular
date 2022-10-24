// ignore_for_file: depend_on_referenced_packages

import 'package:d3f_modular/app_global_binding.dart';
import 'package:d3f_modular/routes/links.dart';
import 'package:d3f_modular/routes/middle_ware.dart';
import 'package:d3f_modular/routes/routes.dart';
import 'package:d3f_modular/translations.dart';
import 'package:d3f_shared/styles/d3f_theme_extension.dart';
import 'package:d3f_shared/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return GetMaterialApp(
      theme: ThemeData(
          brightness: Brightness.light, extensions: D3FThemeExtension.themes),
      debugShowCheckedModeBanner: false,
      translationsKeys: AppGlobalTranslation.mergedTranslationKeys(),
      locale: AppConstants.vnVI,
      fallbackLocale: AppConstants.vnVI,
      initialBinding: AppGlobalBinding(),
      initialRoute: AppLinks.splash,
      routingCallback: (routing) => MiddleWare.observer(routing),
      getPages: AppRoutes.mergedRoutes(),
    );
  }
}
