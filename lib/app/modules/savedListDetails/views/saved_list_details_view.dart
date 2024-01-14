import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/modules/gigs/views/gigs_view.dart';
import 'package:wizer/app/modules/seller/views/seller_view.dart';
import 'package:wizer/core/theme/app_colors.dart';

import '../controllers/saved_list_details_controller.dart';

class SavedListDetailsView extends GetView<SavedListDetailsController> {
  const SavedListDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>SavedListDetailsController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Design Save List'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://picsum.photos/250?image=9"),
              ),
            ),
          ),
          TabBar(
            labelPadding: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            labelColor: AppColors.primary,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: AppColors.primary,
            tabs: const [
              Text("Gigs"),
              Text("Sellers"),
            ],
            controller: controller.tabController,
          ),
          Expanded(
            child: TabBarView(controller: controller.tabController, children: const [
              GigsView(),
              SellerView()
            ]),
          )
        ],
      ),
    );
  }
}
