// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:d3f_core/core.dart';
import 'package:d3f_inapp_purchase/app/app_global_binding.dart';
import 'package:d3f_login/app/app_global_binding.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AppGlobalBinding extends Bindings {
  @override
  void dependencies() {
    D3FCoreGlobalBindings().dependencies();
    LoginGlobalBindings().dependencies();
    InAppPurchaseGlobalBinding().dependencies();
  }
}
