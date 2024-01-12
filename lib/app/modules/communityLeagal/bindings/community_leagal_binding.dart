import 'package:get/get.dart';

import '../controllers/community_leagal_controller.dart';

class CommunityLeagalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommunityLeagalController>(
      () => CommunityLeagalController(),
    );
  }
}
