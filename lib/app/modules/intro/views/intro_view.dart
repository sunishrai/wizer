import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/core/components/extentions/sizedbox.ext.dart';
import 'package:wizer/core/components/widgets/base/base_button.dart';
import 'package:wizer/core/theme/app_colors.dart';

import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>IntroController());
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
            controller: controller.pageViewController,
            itemCount: controller.slideAssetsData.length,
            onPageChanged: controller.onPageChange,
            itemBuilder: (_, i) {
              SlideModel data = controller.slideAssetsData[i];
              return Image.asset(
                data.assetPath,
                fit: BoxFit.cover,
                width: Get.width,
                errorBuilder: (_, __, ___) => const Icon(Icons.accessible_forward),
              );
            }),
        Obx(() => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          controller.slideAssetsData.length,
                          (index) => Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: CircleAvatar(
                                  radius: 6,
                                  backgroundColor:
                                      controller.currentIndex.value == index ? AppColors.primary : Colors.yellow,
                                ),
                              )),
                    ),
                  ),
                  24.h,
                  Text(
                    controller.selectedModel.value.title,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                  Text(
                    controller.selectedModel.value.desc,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white),
                  ),
                  16.h,
                  controller.currentIndex.value == controller.slideAssetsData.length - 1
                      ? BaseButton.primary(label: "Get Started", onPressed: controller.onGetStartedPressed,width: double.infinity,)
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            16.w,
                            // const Visibility(visible: false, child: Text("Skip")),
                            Expanded(
                              child: InkWell(
                                borderRadius: BorderRadius.circular(56),
                                onTap: controller.onNextPress,
                                child: const CircleAvatar(
                                  backgroundColor: AppColors.primary,
                                  radius: 24,
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Skip",
                                  style: TextStyle(color: Colors.white.withOpacity(0.6)),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 16,
                                  color: Colors.white.withOpacity(0.6),
                                )
                              ],
                            )
                          ],
                        ),
                  24.h,
                ],
              ),
            ))
      ],
    ));
  }
}
