import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/modules/provider/providerProfile/views/widgets/profile_tab.dart';
import 'package:wizer/app/modules/provider/providerProfile/views/widgets/profolio_tab.dart';
import 'package:wizer/app/modules/provider/providerProfile/views/widgets/review_tab.dart';
import 'package:wizer/core/components/widgets/reusable/circle_network_img.dart';
import 'package:wizer/core/theme/app_colors.dart';
import 'package:wizer/core/theme/app_strings.dart';

import '../controllers/provider_profile_controller.dart';

class ProviderProfileView extends GetView<ProviderProfileController> {
  const ProviderProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Padding(
          padding: const EdgeInsets.only(top: 56.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleNetworkImage(
                imgPath: AppStrings.dummyProfileImage,
                size: 56,
              ),
              const Text(
                "Martin D",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const Text(
                "@matinD",
                style: TextStyle(fontSize: 14),
              ),
              const Text(
                "Envision Tech",
                style: TextStyle(fontSize: 16),
              ),
              TabBar(
                labelPadding: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                labelColor: AppColors.primary,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: AppColors.primary,
                tabs: const [
                  Text("About"),
                  Text("Review"),
                  Text("Portfolio"),
                ],
                controller: controller.tabController,
              ),
              Expanded(

                child: TabBarView(controller: controller.tabController, children: const [
                  ProviderProfileTab(),
                  ProviderReviewTab(),
                  ProviderPortfolioTab()
                ]),
              )
            ],
          ),
        ));
  }
}
