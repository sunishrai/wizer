import 'package:get/get.dart';

import '../controllers/mail_controller.dart';

class MailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MailController>(
      () => MailController(),
    );
  }
}
