import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wizer/app/modules/termsServeice/views/terms_serveice_view.dart';

import '../controllers/community_leagal_controller.dart';

class CommunityLeagalView extends GetView<CommunityLeagalController> {
  const CommunityLeagalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text('Community and legal'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          communityRow('Privacy Policy'),
          communityRow('Payment Policy'),
          communityRow('Terms of service'),
          communityRow('Community standards'),
        ],
      ),
    );
  }
}

Widget communityRow(String title) {
  return InkWell(
    onTap: () {Get.to(TermsServeiceView());},
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 14, color: Colors.black),
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.black,
            size: 15,
          )
        ],
      ),
    ),
  );
}
