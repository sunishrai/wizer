import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/modules/onboarding/views/onboarding_view.dart';
import 'package:wizer/core/theme/app_colors.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>DashboardController());
    return Scaffold(
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              onTap: controller.onNavChanged,
              showSelectedLabels: false, //selected item
              showUnselectedLabels: false, //unselected item
              currentIndex: controller.index.value,
              unselectedIconTheme: const IconThemeData(color: Colors.grey),
              items: [
                BottomNavigationBarItem(
                    icon: const Icon(Icons.home_filled),
                    activeIcon: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(36), color: AppColors.primary),
                        child: const Icon(Icons.home_filled)),
                    label: ""),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.mail),
                  label: "",
                  activeIcon: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(36), color: AppColors.primary),
                      child: const Icon(Icons.mail)),
                ),

                if(isSeeker)
                BottomNavigationBarItem(
                  icon: const Icon(Icons.search),
                  label: "",
                  activeIcon: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(36), color: AppColors.primary),
                      child: const Icon(Icons.search)),
                ),

                BottomNavigationBarItem(
                  icon: const Icon(Icons.bookmark),
                  label: "",
                  activeIcon: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(36), color: AppColors.primary),
                      child: const Icon(Icons.bookmark)),
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  label: "",
                  activeIcon: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(36), color: AppColors.primary),
                      child: const Icon(Icons.person)),
                ),
              ],
            )),
        body: Obx(() => isSeeker? controller.pages[controller.index.value] : controller.providerPages[controller.index.value]));
  }
}
