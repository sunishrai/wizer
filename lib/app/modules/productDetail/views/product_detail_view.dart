import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/core/components/extentions/sizedbox.ext.dart';
import 'package:wizer/core/components/widgets/base/base_button.dart';
import 'package:wizer/core/theme/app_assets.dart';
import 'package:wizer/core/theme/app_strings.dart';

import '../../../../core/theme/app_colors.dart';
import '../controllers/product_detail_controller.dart';

class ProductDetailView extends GetView<ProductDetailController> {
  const ProductDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(AppStrings.dummyCardImage),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  decoration: const BoxDecoration(color: AppColors.subTextBgColor),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            AppStrings.dummyProfileImage,
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Martin D"),
                            Text(
                              "Top Seller",
                              style: TextStyle(color: AppColors.desingntionColor, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      Chip(
                        labelPadding: EdgeInsets.zero,
                        padding: const EdgeInsets.only(right: 8),
                        label: const Text(
                          'Chat',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.black,
                        avatar: const Icon(Icons.chat),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                      ),
                      4.w,
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 32,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 32,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          16.h,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "I will do SASS design web app UI UX and desktop application design in Figma",
                style: TextStyle(fontSize: 24),
              ),
              8.h,
              const Text(
                "If you are looking for a SaaS UX UI, Web App Design, and Desktop application you are at the right place. I will turn your imagination into reality according to the modern UX/UI standards which will be minimalistic and engaging.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              9.h,
              const Text(
                "Services:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              4.h,
              const Text(" \u2022 SaaS UI UX"),
              const Text(" \u2022 SaaS UI UX"),
              const Text(" \u2022 SaaS UI UX"),
              const Text(" \u2022 SaaS UI UX"),
              Container(
                color: Colors.grey,
                width: double.infinity,
                height: 4,
              ),
              _tabSection(context),
              100.h,
              const Text("My Portfolio")
            ],
          )
        ],
      ),
    ));
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: const TabBar(tabs: [
                Tab(text: "81 AED"),
                Tab(text: "81 AED"),
                Tab(text: "81 AED"),
              ]),
            ),
            Container(
              //Add this to give height
              height: MediaQuery.of(context).size.height,
              child: TabBarView(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Basic Package",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    4.h,
                    const Text("Single Screen Design in Figma with source file and assets unlimited revisions"),
                    8.h,
                    titleTrailing(title: 'Delivery Date', count: 38),
                    titleTrailing(title: 'Delivery Date', count: 38),
                    titleTrailing(
                      title: 'Prompt Creation',
                    ),
                    titleTrailing(
                      title: 'Prompt Creation',
                    ),
                    titleTrailing(
                      title: 'Prompt Creation',
                    ),
                    16.h,
                    BaseButton.primary(
                      label: "Continue (65 AED)",
                      onPressed: () {
                        Get.bottomSheet(ColoredBox(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Invite Friend'),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.close))
                                  ],
                                ),
                                Divider(),
                                Center(child: Image.asset(AppAssets.invitePNG)),
                                Center(child: Text("Share & get up to 100 AED off",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                                Center(child: Text("Give friends a 10% discount up to 1000 AED off their first Wizer order",textAlign: TextAlign.center,)),
                                BaseButton.primary(label: "Iinvite", onPressed: (){},width: double.infinity,)
                              ],
                            ),
                          ),
                        ));
                      },
                      width: double.infinity,
                    )
                  ],
                ),
                Container(
                  child: const Text("Articles Body"),
                ),
                Container(
                  child: const Text("User Body"),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget titleTrailing({required String title, int count = 0}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        count == 0
            ? const Icon(
                Icons.check,
                color: Colors.green,
              )
            : Text(
                count.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
      ],
    );
  }
}
