// ignore_for_file: depend_on_referenced_packages, library_prefixes

import 'package:d3f_inapp_purchase/routes/middle_ware.dart' as inappPurchase;
import 'package:d3f_login/app/routes/app_pages.dart' as loginPages;
import 'package:d3f_login/app/routes/middle_ware.dart' as loginMiddleWare;
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'links.dart';

class MiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return const RouteSettings(name: loginPages.Routes.LOGIN);
  }

  static observer(Routing? routing) {
    loginMiddleWare.LoginMiddleWare.observer(routing);
    inappPurchase.InAppPurchaseMiddleWare.observer(routing);
    switch (routing?.current) {
      case AppLinks.tokenIsExpired:
        {
          Fimber.d('MiddleWare.observer() - AppLinks.tokenIsExpired');
          Get.offNamed(loginPages.Routes.LOGIN);
          break;
        }
      case AppLinks.splash:
        {
          Fimber.d('MiddleWare.observer() - AppLinks.tokenIsExpired');
          Get.offNamed(AppLinks.splash);
          break;
        }
      default:
        {
          Fimber.d('MiddleWare.observer() - unknown the app route.');
          break;
        }
    }
  }
}
