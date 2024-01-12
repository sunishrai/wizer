import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SavedListDetailsController extends GetxController  with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final count = 0.obs;
  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
