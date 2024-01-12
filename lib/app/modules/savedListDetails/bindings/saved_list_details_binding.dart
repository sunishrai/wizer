import 'package:get/get.dart';

import '../controllers/saved_list_details_controller.dart';

class SavedListDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SavedListDetailsController>(
      () => SavedListDetailsController(),
    );
  }
}
