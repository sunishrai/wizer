import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wizer/app/routes/app_pages.dart';
import 'package:wizer/core/theme/app_assets.dart';

class IntroController extends GetxController {
  final List<SlideModel> slideAssetsData = [
    SlideModel(
        assetPath: AppAssets.slide_1PNG,
        title: "Quality Service",
        desc: "Get quality and professional service right to your doorstep."),
    SlideModel(
        assetPath: AppAssets.slide_2PNG,
        title: "Work faster",
        desc: "Get more hands on board to help you do work faster and cleaner."),
    SlideModel(
        assetPath: AppAssets.slide_3PNG,
        title: "Get employed",
        desc: "Get discovered right from home and get paid for what you love doing"),
  ];
  late Rx<SlideModel> selectedModel = slideAssetsData.first.obs;
  RxInt currentIndex = 0.obs;
  final pageViewController = PageController();
  @override
  void onInit() {
    // selectedModel(slideAssetsData[currentIndex.value]);
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

  onNextPress() {
    pageViewController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    currentIndex(pageViewController.page?.toInt());
  }

  void onPageChange(int value) {
    currentIndex(value);
    selectedModel(slideAssetsData[currentIndex.value]);
  }

  void onGetStartedPressed() {
    Get.toNamed(Routes.ONBOARDING);
  }
}

class SlideModel {
  final String assetPath;
  final String title;
  final String desc;

  SlideModel({required this.assetPath, required this.title, required this.desc});
}
