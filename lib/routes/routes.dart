// ignore_for_file: depend_on_referenced_packages, library_prefixes

import 'package:d3f_login/app/routes/app_pages.dart' as loginPages;
import 'package:d3f_modular/screens/splash/splash_page.dart';
import 'package:get/get.dart';

import 'links.dart';

class AppRoutes {
  static final pages = <GetPage>[
    GetPage(name: AppLinks.splash, page: () => const SplashPage()),
  ];

  static List<GetPage>? mergedRoutes() {
    pages.addAll(loginPages.AppPages.routes);
    return pages;
  }
}
