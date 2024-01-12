import 'package:get/get.dart';

import '../controllers/terms_serveice_controller.dart';

class TermsServeiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermsServeiceController>(
      () => TermsServeiceController(),
    );
  }
}
