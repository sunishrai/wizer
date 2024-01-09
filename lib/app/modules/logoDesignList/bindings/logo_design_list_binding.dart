import 'package:get/get.dart';

import '../controllers/logo_design_list_controller.dart';

class LogoDesignListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LogoDesignListController>(
      () => LogoDesignListController(),
    );
  }
}
