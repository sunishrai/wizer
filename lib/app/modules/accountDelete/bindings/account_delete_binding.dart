import 'package:get/get.dart';

import '../controllers/account_delete_controller.dart';

class AccountDeleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountDeleteController>(
      () => AccountDeleteController(),
    );
  }
}
