// ignore_for_file: depend_on_referenced_packages

import 'package:d3f_login/app/routes/routes.dart';
import 'package:d3f_modular/screens/splash/splash_page.dart';
import 'package:get/get.dart';

import 'links.dart';

class AppRoutes {
  static final pages = <GetPage>[
    GetPage(name: AppLinks.splash, page: () => const SplashPage()),
  ];

  static List<GetPage>? mergedRoutes() {
    pages.addAll(LoginAppRoutes.pages);
    return pages;
  }
}
