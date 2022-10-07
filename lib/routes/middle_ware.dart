import 'package:d3f_login/routes/links.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:d3f_login/routes/middle_ware.dart' as login;
import 'package:d3f_inapp_purchase/routes/middle_ware.dart' as inappPurchase;

import 'links.dart';

class MiddleWare extends GetMiddleware {

  @override
  RouteSettings? redirect(String? route) {
      return const RouteSettings(name: LoginAppLinks.login);
  }

  static observer(Routing? routing) {
    login.LoginMiddleWare.observer(routing);
    inappPurchase.InAppPurchaseMiddleWare.observer(routing);
    switch (routing?.current) {
      case AppLinks.tokenIsExpired: {
        Fimber.d('MiddleWare.observer() - AppLinks.tokenIsExpired');
        Get.offNamed(LoginAppLinks.login);
        break;
      }
      case AppLinks.splash: {
        Fimber.d('MiddleWare.observer() - AppLinks.tokenIsExpired');
        Get.offNamed(AppLinks.splash);
        break;
      }
      default: {
        Fimber.d('MiddleWare.observer() - unknown the app route.');
        break;
      }
    }
  }
}