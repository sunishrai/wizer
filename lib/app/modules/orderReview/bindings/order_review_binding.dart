import 'package:get/get.dart';
import 'package:wizer/app/modules/orderReview/controllers/order_review_controller.dart';

class OrderReviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderReviewController>(
      () => OrderReviewController(),
    );
  }
}
