import 'package:d3f_modular/screens/splash/splash_page.dart';
import 'package:get/get.dart';

import 'links.dart';

class AppRoutes {
  static final pages = <GetPage>[
    GetPage(name: AppLinks.splash, page: () => SplashPage()),
  ];
}
