import 'package:get/get.dart';

import '../controllers/chat_details_controller.dart';

class ChatDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatDetailsController>(
      () => ChatDetailsController(),
    );
  }
}
