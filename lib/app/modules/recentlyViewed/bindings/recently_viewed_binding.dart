import 'package:get/get.dart';

import '../controllers/recently_viewed_controller.dart';


class RecentlyViewedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecentlyViewedController>(
      () => RecentlyViewedController(),
    );
  }
}
