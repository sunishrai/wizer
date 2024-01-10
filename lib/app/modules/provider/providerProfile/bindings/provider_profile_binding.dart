import 'package:get/get.dart';

import '../controllers/provider_profile_controller.dart';

class ProviderProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProviderProfileController>(
      () => ProviderProfileController(),
    );
  }
}
