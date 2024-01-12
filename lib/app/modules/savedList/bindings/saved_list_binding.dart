import 'package:get/get.dart';

import '../controllers/saved_list_controller.dart';

class SavedListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SavedListController>(
      () => SavedListController(),
    );
  }
}
