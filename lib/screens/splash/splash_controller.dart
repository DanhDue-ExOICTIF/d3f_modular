import 'package:d3f_core/screens/base/base_controller.dart';
import 'package:d3f_modular/routes/links.dart';
import 'package:get/get.dart';

class SplashController extends BaseController {
  bool _animationComplete = false;

  void indicateAnimationComplete() {
    _animationComplete = true;
    printInfo(info: "Navigate to the dashboard screen.");
    Get.offAllNamed(AppLinks.home);
  }
}
