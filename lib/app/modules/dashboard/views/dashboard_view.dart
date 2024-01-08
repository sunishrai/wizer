import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/core/theme/app_colors.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              onTap: controller.onNavChanged,
              showSelectedLabels: false, //selected item
              showUnselectedLabels: false, //unselected item
              currentIndex: controller.index.value,
              unselectedIconTheme: IconThemeData(color: Colors.grey),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    activeIcon: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(36), color: AppColors.primary),
                        child: Icon(Icons.home_filled)),
                    label: ""),
                BottomNavigationBarItem(
                  icon: Icon(Icons.mail),
                  label: "",
                  activeIcon: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(36), color: AppColors.primary),
                      child: Icon(Icons.mail)),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "",
                  activeIcon: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(36), color: AppColors.primary),
                      child: Icon(Icons.search)),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark),
                  label: "",
                  activeIcon: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(36), color: AppColors.primary),
                      child: Icon(Icons.bookmark)),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "",
                  activeIcon: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(36), color: AppColors.primary),
                      child: Icon(Icons.person)),
                ),
              ],
            )),
        body: Obx(() => controller.pages[controller.index.value]));
  }
}
