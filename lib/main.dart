import 'package:d3f_modular/app_global_binding.dart';
import 'package:d3f_modular/routes/links.dart';
import 'package:d3f_modular/routes/middle_ware.dart';
import 'package:d3f_modular/routes/routes.dart';
import 'package:d3f_modular/translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      translationsKeys: AppGlobalTranslation.mergedTranslationKeys(),
      locale: const Locale('vi', 'VI'),
      fallbackLocale: const Locale('vi', 'VI'),
      initialBinding: AppGlobalBinding(),
      initialRoute: AppLinks.splash,
      routingCallback: (routing) => MiddleWare.observer,
      getPages: AppRoutes.mergedRoutes(),
    );
  }
}
