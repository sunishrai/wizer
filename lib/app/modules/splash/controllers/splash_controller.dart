import 'package:get/get.dart';
import 'package:wizer/app/modules/intro/views/intro_view.dart';

import '../../intro/controllers/intro_controller.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Get.put(IntroController());
    Future.delayed(const Duration(seconds: 3)).then((val) {
      // Navigation Here
      Get.off(IntroView());
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
