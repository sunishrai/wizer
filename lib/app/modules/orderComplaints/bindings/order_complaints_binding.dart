import 'package:get/get.dart';

import '../controllers/order_complaints_controller.dart';

class OrderComplaintsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderComplaintsController>(
      () => OrderComplaintsController(),
    );
  }
}
