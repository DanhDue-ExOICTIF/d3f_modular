import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:d3f_login/app_global_binding.dart';

class AppGlobalBinding extends Bindings {
  @override
  void dependencies() {
    LoginGlobalBinding().dependencies();
    Get.put(() => Dio(), permanent: true);
  }
}