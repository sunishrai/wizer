import 'package:get/get.dart';

import '../controllers/provider_page_controller.dart';

class ProviderPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProviderPageController>(
      () => ProviderPageController(),
    );
  }
}
