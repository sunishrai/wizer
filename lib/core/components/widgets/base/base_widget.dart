import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wizer/core/theme/app_assets.dart';
import '../../../../config.dart';
import '../../../theme/app_colors.dart';

class BaseWidget extends StatelessWidget {
  const BaseWidget({super.key, required this.child, this.title, this.customAppBar, this.customAction, this.bottomNav});
  final Widget child;
  final String? title;
  final AppBar? customAppBar;
  final Widget? bottomNav;
  final Widget? customAction; // New property for custom action appbar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNav,
      appBar: title != null
          ? customAppBar ??
              AppBar(
                centerTitle: true,
                leading: GestureDetector(
                    onTap: () => Get.back(), child: const Icon(Icons.arrow_back_ios, color: Colors.white)),
                title: Text(
                  title!,
                ),
                actions: [
                  customAction ?? const SizedBox.shrink(), // Use customAction here
                ],
                backgroundColor: AppColors.primary,
              )
          : customAppBar ??
              AppBar(
                leadingWidth: 100,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Image.asset(
                    AppAssets.logoPNG,
                  ),
                ),
                actions: [
                  !ConfigEnvironments.getCurrentEnvironment().isProd
                      ? Chip(
                          label: Text(ConfigEnvironments.getCurrentEnvironment().name.toUpperCase()),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                        )
                      : const SizedBox.shrink()
                ],
                backgroundColor: AppColors.primary,
              ),
      body: child,
    );
  }
}


