import 'package:get/get.dart';

import '../controllers/gigs_controller.dart';

class GigsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GigsController>(
      () => GigsController(),
    );
  }
}
