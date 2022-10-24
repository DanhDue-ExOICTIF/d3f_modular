// ignore_for_file: depend_on_referenced_packages

import 'package:d3f_login/app/app_global_binding.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AppGlobalBinding extends Bindings {
  @override
  void dependencies() {
    LoginGlobalBinding().dependencies();
    Get.put(() => Dio(), permanent: true);
  }
}
