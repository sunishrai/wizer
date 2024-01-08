import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wizer/app/modules/bookmark/controllers/bookmark_controller.dart';
import 'package:wizer/app/modules/home/controllers/home_controller.dart';
import 'package:wizer/app/modules/profile/controllers/profile_controller.dart';

import '../../search/controllers/search_controller.dart';
import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<SearchPageController>(
      () => SearchPageController(),
    );
    Get.lazyPut<BookmarkController>(
      () => BookmarkController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
