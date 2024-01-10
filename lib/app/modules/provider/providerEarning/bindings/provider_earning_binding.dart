import 'package:get/get.dart';

import '../controllers/provider_earning_controller.dart';

class ProviderEarningBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProviderEarningController>(
      () => ProviderEarningController(),
    );
  }
}
