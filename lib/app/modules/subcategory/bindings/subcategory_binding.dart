import 'package:get/get.dart';

import '../controllers/subcategory_controller.dart';

class SubcategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubcategoryController>(
      () => SubcategoryController(),
    );
  }
}
